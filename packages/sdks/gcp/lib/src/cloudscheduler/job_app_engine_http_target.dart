// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_app_engine_http_target_app_engine_routing.dart';

class JobAppEngineHttpTarget {
  /// App Engine Routing setting for the job.
  /// Structure is documented below.
  final pulumi.Input<JobAppEngineHttpTargetAppEngineRouting>? appEngineRouting;
  /// HTTP request body.
  /// A request body is allowed only if the HTTP method is POST or PUT.
  /// It will result in invalid argument error to set a body on a job with an incompatible HttpMethod.
  /// A base64-encoded string.
  final pulumi.Input<String>? body;
  /// HTTP request headers.
  /// This map contains the header field names and values.
  /// Headers can be set when the job is created.
  final pulumi.Input<Map<String, String>>? headers;
  /// Which HTTP method to use for the request.
  final pulumi.Input<String>? httpMethod;
  /// The relative URI.
  /// The relative URL must begin with "/" and must be a valid HTTP relative URL.
  /// It can contain a path, query string arguments, and \# fragments.
  /// If the relative URL is empty, then the root path "/" will be used.
  /// No spaces are allowed, and the maximum length allowed is 2083 characters
  final pulumi.Input<String> relativeUri;

  /// Creates a new [JobAppEngineHttpTarget].
  /// [appEngineRouting] App Engine Routing setting for the job.
  /// [body] HTTP request body.
  /// [headers] HTTP request headers.
  /// [httpMethod] Which HTTP method to use for the request.
  /// [relativeUri] The relative URI.
  JobAppEngineHttpTarget({
    this.appEngineRouting,
    this.body,
    this.headers,
    this.httpMethod,
    required this.relativeUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appEngineRouting': ?pulumi.Input.mapOptionalInputValue<JobAppEngineHttpTargetAppEngineRouting, Map<String, dynamic>>(appEngineRouting, (value) => value.toMap()),
      'body': ?body,
      'headers': ?headers,
      'httpMethod': ?httpMethod,
      'relativeUri': relativeUri,
    };
  }

  factory JobAppEngineHttpTarget.fromMap(Map<String, dynamic> map) {
    return JobAppEngineHttpTarget(
      appEngineRouting: (() { final guardedValue = map['appEngineRouting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobAppEngineHttpTargetAppEngineRouting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      httpMethod: (() { final guardedValue = map['httpMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relativeUri: pulumi.Input.fromValue(map['relativeUri'] as String),
    );
  }
}

