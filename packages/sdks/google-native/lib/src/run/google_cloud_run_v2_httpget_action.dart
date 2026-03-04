// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_httpheader.dart';

/// HTTPGetAction describes an action based on HTTP Get requests.
class GoogleCloudRunV2HTTPGetAction {
  /// Custom headers to set in the request. HTTP allows repeated headers.
  final pulumi.Input<List<GoogleCloudRunV2HTTPHeader>>? httpHeaders;

  /// Path to access on the HTTP server. Defaults to '/'.
  final pulumi.Input<String>? path;

  /// Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  final pulumi.Input<int>? port;

  /// Creates a new [GoogleCloudRunV2HTTPGetAction].
  /// [httpHeaders] Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Path to access on the HTTP server. Defaults to '/'.
  /// [port] Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  GoogleCloudRunV2HTTPGetAction({this.httpHeaders, this.path, this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHeaders':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudRunV2HTTPHeader>,
            List<Map<String, dynamic>>
          >(
            httpHeaders,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudRunV2HTTPHeader,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'path': ?path,
      'port': ?port,
    };
  }

  factory GoogleCloudRunV2HTTPGetAction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2HTTPGetAction(
      httpHeaders: (() {
        final guardedValue = map['httpHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GoogleCloudRunV2HTTPHeader>(
            guardedValue,
            (value) => GoogleCloudRunV2HTTPHeader.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
