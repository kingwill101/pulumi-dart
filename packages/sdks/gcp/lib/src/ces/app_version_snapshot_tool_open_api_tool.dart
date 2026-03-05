// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_open_api_tool_api_authentication.dart';
import 'app_version_snapshot_tool_open_api_tool_service_directory_config.dart';
import 'app_version_snapshot_tool_open_api_tool_tls_config.dart';

class AppVersionSnapshotToolOpenApiTool {
  /// (Output)
  /// Authentication information required for API calls.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolOpenApiToolApiAuthentication>>? apiAuthentications;
  /// The description of the app version.
  final pulumi.Input<String>? description;
  /// (Output)
  /// If true, the agent will ignore unknown fields in the API response for all
  /// operations defined in the OpenAPI schema.
  final pulumi.Input<bool>? ignoreUnknownFields;
  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final pulumi.Input<String>? name;
  /// (Output)
  /// The OpenAPI schema of the toolset.
  final pulumi.Input<String>? openApiSchema;
  /// (Output)
  /// Configuration for tools using Service Directory.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolOpenApiToolServiceDirectoryConfig>>? serviceDirectoryConfigs;
  /// (Output)
  /// The TLS configuration.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolOpenApiToolTlsConfig>>? tlsConfigs;
  /// (Output)
  /// The server URL of the Open API schema.
  /// This field is only set in toolsets in the environment dependencies
  /// during the export process if the schema contains a server url.
  /// During the import process, if this url is present in the environment dependencies
  /// and the schema has the $env_var placeholder,
  /// it will replace the placeholder in the schema.
  final pulumi.Input<String>? url;

  /// Creates a new [AppVersionSnapshotToolOpenApiTool].
  /// [apiAuthentications] (Output)
  /// [description] The description of the app version.
  /// [ignoreUnknownFields] (Output)
  /// [name] (Output)
  /// [openApiSchema] (Output)
  /// [serviceDirectoryConfigs] (Output)
  /// [tlsConfigs] (Output)
  /// [url] (Output)
  AppVersionSnapshotToolOpenApiTool({
    this.apiAuthentications,
    this.description,
    this.ignoreUnknownFields,
    this.name,
    this.openApiSchema,
    this.serviceDirectoryConfigs,
    this.tlsConfigs,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiAuthentications': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolOpenApiToolApiAuthentication>, List<Map<String, dynamic>>>(apiAuthentications, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolOpenApiToolApiAuthentication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'ignoreUnknownFields': ?ignoreUnknownFields,
      'name': ?name,
      'openApiSchema': ?openApiSchema,
      'serviceDirectoryConfigs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolOpenApiToolServiceDirectoryConfig>, List<Map<String, dynamic>>>(serviceDirectoryConfigs, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolOpenApiToolServiceDirectoryConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tlsConfigs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolOpenApiToolTlsConfig>, List<Map<String, dynamic>>>(tlsConfigs, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolOpenApiToolTlsConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'url': ?url,
    };
  }

  factory AppVersionSnapshotToolOpenApiTool.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolOpenApiTool(
      apiAuthentications: (() { final guardedValue = map['apiAuthentications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotToolOpenApiToolApiAuthentication>(guardedValue, (value) => AppVersionSnapshotToolOpenApiToolApiAuthentication.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreUnknownFields: (() { final guardedValue = map['ignoreUnknownFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      openApiSchema: (() { final guardedValue = map['openApiSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDirectoryConfigs: (() { final guardedValue = map['serviceDirectoryConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotToolOpenApiToolServiceDirectoryConfig>(guardedValue, (value) => AppVersionSnapshotToolOpenApiToolServiceDirectoryConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tlsConfigs: (() { final guardedValue = map['tlsConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotToolOpenApiToolTlsConfig>(guardedValue, (value) => AppVersionSnapshotToolOpenApiToolTlsConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

