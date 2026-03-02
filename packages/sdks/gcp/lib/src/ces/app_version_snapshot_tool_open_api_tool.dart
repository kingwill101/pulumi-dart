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
      apiAuthentications: map['apiAuthentications'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotToolOpenApiToolApiAuthentication>(map['apiAuthentications']!, (value) => AppVersionSnapshotToolOpenApiToolApiAuthentication.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      ignoreUnknownFields: map['ignoreUnknownFields'] == null ? null : (map['ignoreUnknownFields']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      openApiSchema: map['openApiSchema'] == null ? null : (map['openApiSchema']! as String).input(),
      serviceDirectoryConfigs: map['serviceDirectoryConfigs'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotToolOpenApiToolServiceDirectoryConfig>(map['serviceDirectoryConfigs']!, (value) => AppVersionSnapshotToolOpenApiToolServiceDirectoryConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tlsConfigs: map['tlsConfigs'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotToolOpenApiToolTlsConfig>(map['tlsConfigs']!, (value) => AppVersionSnapshotToolOpenApiToolTlsConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

