import 'package:dio/dio.dart';
import 'package:learn_flutter/server/config.dart';


class HttpRequest {
  static final BaseOptions baseOptions = BaseOptions(
    baseUrl: HttpConfig.baseUrl,
    connectTimeout: HttpConfig.timeout
  );
  static final Dio dio = Dio();
  static Future<T> request<T>(String url,
    {
      String method='get',
      Map<String,dynamic>params,
      Interceptor inter
    }) async {
      //1.创建单独配置
      final option = Options(method: method);
      //全局拦截器
      //创建默认拦截器
      Interceptor dIter = InterceptorsWrapper(
        onRequest: (options){
          print('请求');
          return options;
        },
        onResponse: (response){
          return response;
        },
        onError: (err){
          return err;
        }
      );
      List<Interceptor> inters = [dIter];
      if(inters != null){
        inters.add(inter);
      }
      dio.interceptors.addAll(inters); 
      //2.发射网络请求
      try{
        Response response =await dio.request(url,queryParameters:params,options:option); 
        return response.data;
      }on DioError catch(e){
        return Future.error(e);
      }
    }
    // static void get(url){
    //   request(url,method:'get');
    // }
}
