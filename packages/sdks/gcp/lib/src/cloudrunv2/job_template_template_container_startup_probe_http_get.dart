// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_template_container_startup_probe_http_get_http_header.dart';

class JobTemplateTemplateContainerStartupProbeHttpGet {
  /// Custom headers to set in the request. HTTP allows repeated headers.
  /// Structure is documented below.
  final pulumi.Input<List<JobTemplateTemplateContainerStartupProbeHttpGetHttpHeader>>? httpHeaders;
  /// Path to access on the HTTP server. If set, it should not be empty string.
  final pulumi.Input<String>? path;
  /// Port number to access on the container. Number must be in the range 1 to 65535.
  /// If not specified, defaults to the same value as container.ports[0].containerPort.
  final pulumi.Input<int>? port;

  /// Creates a new [JobTemplateTemplateContainerStartupProbeHttpGet].
  /// [httpHeaders] Custom headers to set in the request. HTTP allows repeated headers.
  /// [path] Path to access on the HTTP server. If set, it should not be empty string.
  /// [port] Port number to access on the container. Number must be in the range 1 to 65535.
  JobTemplateTemplateContainerStartupProbeHttpGet({
    this.httpHeaders,
    this.path,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHeaders': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateTemplateContainerStartupProbeHttpGetHttpHeader>, List<Map<String, dynamic>>>(httpHeaders, (value) => pulumi.Input.encodeList<JobTemplateTemplateContainerStartupProbeHttpGetHttpHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'path': ?path,
      'port': ?port,
    };
  }

  factory JobTemplateTemplateContainerStartupProbeHttpGet.fromMap(Map<String, dynamic> map) {
    return JobTemplateTemplateContainerStartupProbeHttpGet(
      httpHeaders: map['httpHeaders'] == null ? null : (pulumi.Input.decodeList<JobTemplateTemplateContainerStartupProbeHttpGetHttpHeader>(map['httpHeaders']!, (value) => JobTemplateTemplateContainerStartupProbeHttpGetHttpHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
    );
  }
}

