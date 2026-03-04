// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_toolset_open_api_toolset_api_authentication.dart';
import 'app_version_snapshot_toolset_open_api_toolset_service_directory_config.dart';
import 'app_version_snapshot_toolset_open_api_toolset_tls_config.dart';

class AppVersionSnapshotToolsetOpenApiToolset {
  /// (Output)
  /// Authentication information required for API calls.
  /// Structure is documented below.
  final pulumi.Input<
    List<AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication>
  >?
  apiAuthentications;

  /// (Output)
  /// If true, the agent will ignore unknown fields in the API response for all
  /// operations defined in the OpenAPI schema.
  final pulumi.Input<bool>? ignoreUnknownFields;

  /// (Output)
  /// The OpenAPI schema of the toolset.
  final pulumi.Input<String>? openApiSchema;

  /// (Output)
  /// Configuration for tools using Service Directory.
  /// Structure is documented below.
  final pulumi.Input<
    List<AppVersionSnapshotToolsetOpenApiToolsetServiceDirectoryConfig>
  >?
  serviceDirectoryConfigs;

  /// (Output)
  /// The TLS configuration.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolsetOpenApiToolsetTlsConfig>>?
  tlsConfigs;

  /// (Output)
  /// The server URL of the Open API schema.
  /// This field is only set in toolsets in the environment dependencies
  /// during the export process if the schema contains a server url.
  /// During the import process, if this url is present in the environment dependencies
  /// and the schema has the $env_var placeholder,
  /// it will replace the placeholder in the schema.
  final pulumi.Input<String>? url;

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
      'apiAuthentications':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication>,
            List<Map<String, dynamic>>
          >(
            apiAuthentications,
            (value) =>
                pulumi.Input.encodeList<
                  AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ignoreUnknownFields': ?ignoreUnknownFields,
      'openApiSchema': ?openApiSchema,
      'serviceDirectoryConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppVersionSnapshotToolsetOpenApiToolsetServiceDirectoryConfig>,
            List<Map<String, dynamic>>
          >(
            serviceDirectoryConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  AppVersionSnapshotToolsetOpenApiToolsetServiceDirectoryConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tlsConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppVersionSnapshotToolsetOpenApiToolsetTlsConfig>,
            List<Map<String, dynamic>>
          >(
            tlsConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  AppVersionSnapshotToolsetOpenApiToolsetTlsConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'url': ?url,
    };
  }

  factory AppVersionSnapshotToolsetOpenApiToolset.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotToolsetOpenApiToolset(
      apiAuthentications: (() {
        final guardedValue = map['apiAuthentications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication
          >(
            guardedValue,
            (value) =>
                AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      ignoreUnknownFields: (() {
        final guardedValue = map['ignoreUnknownFields'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      openApiSchema: (() {
        final guardedValue = map['openApiSchema'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceDirectoryConfigs: (() {
        final guardedValue = map['serviceDirectoryConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AppVersionSnapshotToolsetOpenApiToolsetServiceDirectoryConfig
          >(
            guardedValue,
            (value) =>
                AppVersionSnapshotToolsetOpenApiToolsetServiceDirectoryConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      tlsConfigs: (() {
        final guardedValue = map['tlsConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AppVersionSnapshotToolsetOpenApiToolsetTlsConfig
          >(
            guardedValue,
            (value) => AppVersionSnapshotToolsetOpenApiToolsetTlsConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
