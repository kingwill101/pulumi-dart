// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_toolset_open_api_toolset_api_authentication.dart';
import 'app_version_snapshot_toolset_open_api_toolset_service_directory_config.dart';
import 'app_version_snapshot_toolset_open_api_toolset_tls_config.dart';

class AppVersionSnapshotToolsetOpenApiToolset {
  /// (Output)
  /// Authentication information required for API calls.
  /// Structure is documented below.
  final List<AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication>? apiAuthentications;
  /// (Output)
  /// If true, the agent will ignore unknown fields in the API response for all
  /// operations defined in the OpenAPI schema.
  final bool? ignoreUnknownFields;
  /// (Output)
  /// The OpenAPI schema of the toolset.
  final String? openApiSchema;
  /// (Output)
  /// Configuration for tools using Service Directory.
  /// Structure is documented below.
  final List<AppVersionSnapshotToolsetOpenApiToolsetServiceDirectoryConfig>? serviceDirectoryConfigs;
  /// (Output)
  /// The TLS configuration.
  /// Structure is documented below.
  final List<AppVersionSnapshotToolsetOpenApiToolsetTlsConfig>? tlsConfigs;
  /// (Output)
  /// The server URL of the Open API schema.
  /// This field is only set in toolsets in the environment dependencies
  /// during the export process if the schema contains a server url.
  /// During the import process, if this url is present in the environment dependencies
  /// and the schema has the $env_var placeholder,
  /// it will replace the placeholder in the schema.
  final String? url;

  /// Creates a new [AppVersionSnapshotToolsetOpenApiToolset].
  /// [apiAuthentications] (Output)
  /// [ignoreUnknownFields] (Output)
  /// [openApiSchema] (Output)
  /// [serviceDirectoryConfigs] (Output)
  /// [tlsConfigs] (Output)
  /// [url] (Output)
  AppVersionSnapshotToolsetOpenApiToolset({
    this.apiAuthentications,
    this.ignoreUnknownFields,
    this.openApiSchema,
    this.serviceDirectoryConfigs,
    this.tlsConfigs,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiAuthentications': ?apiAuthentications == null ? null : pulumi.Input.encodeList<AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication, Map<String, dynamic>>(apiAuthentications!, (value) => value.toMap()),
      'ignoreUnknownFields': ?ignoreUnknownFields,
      'openApiSchema': ?openApiSchema,
      'serviceDirectoryConfigs': ?serviceDirectoryConfigs == null ? null : pulumi.Input.encodeList<AppVersionSnapshotToolsetOpenApiToolsetServiceDirectoryConfig, Map<String, dynamic>>(serviceDirectoryConfigs!, (value) => value.toMap()),
      'tlsConfigs': ?tlsConfigs == null ? null : pulumi.Input.encodeList<AppVersionSnapshotToolsetOpenApiToolsetTlsConfig, Map<String, dynamic>>(tlsConfigs!, (value) => value.toMap()),
      'url': ?url,
    };
  }

  factory AppVersionSnapshotToolsetOpenApiToolset.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolsetOpenApiToolset(
      apiAuthentications: map['apiAuthentications'] == null ? null : pulumi.Input.decodeList<AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication>(map['apiAuthentications'], (value) => AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication.fromMap((value as Map).cast<String, dynamic>())),
      ignoreUnknownFields: map['ignoreUnknownFields'] == null ? null : map['ignoreUnknownFields'] as bool,
      openApiSchema: map['openApiSchema'] == null ? null : map['openApiSchema'] as String,
      serviceDirectoryConfigs: map['serviceDirectoryConfigs'] == null ? null : pulumi.Input.decodeList<AppVersionSnapshotToolsetOpenApiToolsetServiceDirectoryConfig>(map['serviceDirectoryConfigs'], (value) => AppVersionSnapshotToolsetOpenApiToolsetServiceDirectoryConfig.fromMap((value as Map).cast<String, dynamic>())),
      tlsConfigs: map['tlsConfigs'] == null ? null : pulumi.Input.decodeList<AppVersionSnapshotToolsetOpenApiToolsetTlsConfig>(map['tlsConfigs'], (value) => AppVersionSnapshotToolsetOpenApiToolsetTlsConfig.fromMap((value as Map).cast<String, dynamic>())),
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

