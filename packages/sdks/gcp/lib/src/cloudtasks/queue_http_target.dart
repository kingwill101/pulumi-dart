// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_http_target_header_override.dart';
import 'queue_http_target_oauth_token.dart';
import 'queue_http_target_oidc_token.dart';
import 'queue_http_target_uri_override.dart';

class QueueHttpTarget {
  /// HTTP target headers.
  /// This map contains the header field names and values.
  /// Headers will be set when running the CreateTask and/or BufferTask.
  /// These headers represent a subset of the headers that will be configured for the task's HTTP request.
  /// Some HTTP request headers will be ignored or replaced.
  /// Headers which can have multiple values (according to RFC2616) can be specified using comma-separated values.
  /// The size of the headers must be less than 80KB. Queue-level headers to override headers of all the tasks in the queue.
  /// Structure is documented below.
  final pulumi.Input<List<QueueHttpTargetHeaderOverride>>? headerOverrides;
  /// The HTTP method to use for the request.
  /// When specified, it overrides HttpRequest for the task.
  /// Note that if the value is set to GET the body of the task will be ignored at execution time.
  /// Possible values are: `HTTP_METHOD_UNSPECIFIED`, `POST`, `GET`, `HEAD`, `PUT`, `DELETE`, `PATCH`, `OPTIONS`.
  final pulumi.Input<String>? httpMethod;
  /// If specified, an OAuth token is generated and attached as the Authorization header in the HTTP request.
  /// This type of authorization should generally be used only when calling Google APIs hosted on *.googleapis.com.
  /// Note that both the service account email and the scope MUST be specified when using the queue-level authorization override.
  /// Structure is documented below.
  final pulumi.Input<QueueHttpTargetOauthToken>? oauthToken;
  /// If specified, an OIDC token is generated and attached as an Authorization header in the HTTP request.
  /// This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.
  /// Note that both the service account email and the audience MUST be specified when using the queue-level authorization override.
  /// Structure is documented below.
  final pulumi.Input<QueueHttpTargetOidcToken>? oidcToken;
  /// URI override.
  /// When specified, overrides the execution URI for all the tasks in the queue.
  /// Structure is documented below.
  final pulumi.Input<QueueHttpTargetUriOverride>? uriOverride;

  /// Creates a new [QueueHttpTarget].
  /// [headerOverrides] HTTP target headers.
  /// [httpMethod] The HTTP method to use for the request.
  /// [oauthToken] If specified, an OAuth token is generated and attached as the Authorization header in the HTTP request.
  /// [oidcToken] If specified, an OIDC token is generated and attached as an Authorization header in the HTTP request.
  /// [uriOverride] URI override.
  QueueHttpTarget({
    this.headerOverrides,
    this.httpMethod,
    this.oauthToken,
    this.oidcToken,
    this.uriOverride,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerOverrides': ?pulumi.Input.mapOptionalInputValue<List<QueueHttpTargetHeaderOverride>, List<Map<String, dynamic>>>(headerOverrides, (value) => pulumi.Input.encodeList<QueueHttpTargetHeaderOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpMethod': ?httpMethod,
      'oauthToken': ?pulumi.Input.mapOptionalInputValue<QueueHttpTargetOauthToken, Map<String, dynamic>>(oauthToken, (value) => value.toMap()),
      'oidcToken': ?pulumi.Input.mapOptionalInputValue<QueueHttpTargetOidcToken, Map<String, dynamic>>(oidcToken, (value) => value.toMap()),
      'uriOverride': ?pulumi.Input.mapOptionalInputValue<QueueHttpTargetUriOverride, Map<String, dynamic>>(uriOverride, (value) => value.toMap()),
    };
  }

  factory QueueHttpTarget.fromMap(Map<String, dynamic> map) {
    return QueueHttpTarget(
      headerOverrides: (() { final guardedValue = map['headerOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QueueHttpTargetHeaderOverride>(guardedValue, (value) => QueueHttpTargetHeaderOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      httpMethod: (() { final guardedValue = map['httpMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthToken: (() { final guardedValue = map['oauthToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueHttpTargetOauthToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oidcToken: (() { final guardedValue = map['oidcToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueHttpTargetOidcToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uriOverride: (() { final guardedValue = map['uriOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueHttpTargetUriOverride.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

