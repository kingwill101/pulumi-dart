// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_engine_routing_response.dart';

/// App Engine target. The job will be pushed to a job handler by means of an HTTP request via an http_method such as HTTP POST, HTTP GET, etc. The job is acknowledged by means of an HTTP response code in the range [200 - 299]. Error 503 is considered an App Engine system error instead of an application error. Requests returning error 503 will be retried regardless of retry configuration and not counted against retry counts. Any other response code, or a failure to receive a response before the deadline, constitutes a failed attempt.
class AppEngineHttpTargetResponse {
  /// App Engine Routing setting for the job.
  final pulumi.Input<AppEngineRoutingResponse> appEngineRouting;
  /// Body. HTTP request body. A request body is allowed only if the HTTP method is POST or PUT. It will result in invalid argument error to set a body on a job with an incompatible HttpMethod.
  final pulumi.Input<String> body;
  /// HTTP request headers. This map contains the header field names and values. Headers can be set when the job is created. Cloud Scheduler sets some headers to default values: * `User-Agent`: By default, this header is `"AppEngine-Google; (+http://code.google.com/appengine)"`. This header can be modified, but Cloud Scheduler will append `"AppEngine-Google; (+http://code.google.com/appengine)"` to the modified `User-Agent`. * `X-CloudScheduler`: This header will be set to true. * `X-CloudScheduler-JobName`: This header will contain the job name. * `X-CloudScheduler-ScheduleTime`: For Cloud Scheduler jobs specified in the unix-cron format, this header will contain the job schedule time in RFC3339 UTC "Zulu" format. If the job has a body and the following headers are not set by the user, Cloud Scheduler sets default values: * `Content-Type`: This will be set to `"application/octet-stream"`. You can override this default by explicitly setting `Content-Type` to a particular media type when creating the job. For example, you can set `Content-Type` to `"application/json"`. The headers below are output only. They cannot be set or overridden: * `Content-Length`: This is computed by Cloud Scheduler. * `X-Google-*`: For Google internal use only. * `X-AppEngine-*`: For Google internal use only. In addition, some App Engine headers, which contain job-specific information, are also be sent to the job handler.
  final pulumi.Input<Map<String, String>> headers;
  /// The HTTP method to use for the request. PATCH and OPTIONS are not permitted.
  final pulumi.Input<String> httpMethod;
  /// The relative URI. The relative URL must begin with "/" and must be a valid HTTP relative URL. It can contain a path, query string arguments, and `#` fragments. If the relative URL is empty, then the root path "/" will be used. No spaces are allowed, and the maximum length allowed is 2083 characters.
  final pulumi.Input<String> relativeUri;

  /// Creates a new [AppEngineHttpTargetResponse].
  /// [appEngineRouting] App Engine Routing setting for the job.
  /// [body] Body. HTTP request body. A request body is allowed only if the HTTP method is POST or PUT. It will result in invalid argument error to set a body on a job with an incompatible HttpMethod.
  /// [headers] HTTP request headers. This map contains the header field names and values. Headers can be set when the job is created. Cloud Scheduler sets some headers to default values: * `User-Agent`: By default, this header is `"AppEngine-Google; (+http://code.google.com/appengine)"`. This header can be modified, but Cloud Scheduler will append `"AppEngine-Google; (+http://code.google.com/appengine)"` to the modified `User-Agent`. * `X-CloudScheduler`: This header will be set to true. * `X-CloudScheduler-JobName`: This header will contain the job name. * `X-CloudScheduler-ScheduleTime`: For Cloud Scheduler jobs specified in the unix-cron format, this header will contain the job schedule time in RFC3339 UTC "Zulu" format. If the job has a body and the following headers are not set by the user, Cloud Scheduler sets default values: * `Content-Type`: This will be set to `"application/octet-stream"`. You can override this default by explicitly setting `Content-Type` to a particular media type when creating the job. For example, you can set `Content-Type` to `"application/json"`. The headers below are output only. They cannot be set or overridden: * `Content-Length`: This is computed by Cloud Scheduler. * `X-Google-*`: For Google internal use only. * `X-AppEngine-*`: For Google internal use only. In addition, some App Engine headers, which contain job-specific information, are also be sent to the job handler.
  /// [httpMethod] The HTTP method to use for the request. PATCH and OPTIONS are not permitted.
  /// [relativeUri] The relative URI. The relative URL must begin with "/" and must be a valid HTTP relative URL. It can contain a path, query string arguments, and `#` fragments. If the relative URL is empty, then the root path "/" will be used. No spaces are allowed, and the maximum length allowed is 2083 characters.
  const AppEngineHttpTargetResponse({
    required this.appEngineRouting,
    required this.body,
    required this.headers,
    required this.httpMethod,
    required this.relativeUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineRouting': pulumi.Input.mapInputValue<AppEngineRoutingResponse, Map<String, dynamic>>(appEngineRouting, (value) => value.toMap()),
      'body': body,
      'headers': headers,
      'httpMethod': httpMethod,
      'relativeUri': relativeUri,
    };
  }

  factory AppEngineHttpTargetResponse.fromMap(Map<String, dynamic> map) {
    return AppEngineHttpTargetResponse(
      appEngineRouting: pulumi.Input.fromValue(AppEngineRoutingResponse.fromMap((map['appEngineRouting']! as Map).cast<String, dynamic>())),
      body: pulumi.Input.fromValue(map['body'] as String),
      headers: pulumi.Input.fromValue((map['headers'] as Map).cast<String, String>()),
      httpMethod: pulumi.Input.fromValue(map['httpMethod'] as String),
      relativeUri: pulumi.Input.fromValue(map['relativeUri'] as String),
    );
  }
}
