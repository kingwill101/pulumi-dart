// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_api_version_set_api_version_set_args_doc}
/// The set of arguments for ApiVersionSet.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_version_set_api_version_set_args_doc}
class ApiVersionSetArgs {
  /// The name of the API Management Service in which the API Version Set should exist. May only contain alphanumeric characters and dashes up to 50 characters in length. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementName;
  /// The description of API Version Set.
  final pulumi.Input<String>? description;
  /// The display name of this API Version Set.
  final pulumi.Input<String> displayName;
  /// The name of the API Version Set. May only contain alphanumeric characters and dashes up to 80 characters in length. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group in which the parent API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Header which should be read from Inbound Requests which defines the API Version.
  ///
  /// > **Note:** This must be specified when `versioning_scheme` is set to `Header`.
  final pulumi.Input<String>? versionHeaderName;
  /// The name of the Query String which should be read from Inbound Requests which defines the API Version.
  ///
  /// > **Note:** This must be specified when `versioning_scheme` is set to `Query`.
  final pulumi.Input<String>? versionQueryName;
  /// Specifies where in an Inbound HTTP Request that the API Version should be read from. Possible values are `Header`, `Query` and `Segment`.
  final pulumi.Input<String> versioningScheme;

  /// Creates a new [ApiVersionSetArgs].
  /// [apiManagementName] The name of the API Management Service in which the API Version Set should exist. May only contain alphanumeric characters and dashes up to 50 characters in length. Changing this forces a new resource to be created.
  /// [description] The description of API Version Set.
  /// [displayName] The display name of this API Version Set.
  /// [name] The name of the API Version Set. May only contain alphanumeric characters and dashes up to 80 characters in length. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the parent API Management Service exists. Changing this forces a new resource to be created.
  /// [versionHeaderName] The name of the Header which should be read from Inbound Requests which defines the API Version.
  /// [versionQueryName] The name of the Query String which should be read from Inbound Requests which defines the API Version.
  /// [versioningScheme] Specifies where in an Inbound HTTP Request that the API Version should be read from. Possible values are `Header`, `Query` and `Segment`.
  ApiVersionSetArgs({
    required this.apiManagementName,
    this.description,
    required this.displayName,
    this.name,
    required this.resourceGroupName,
    this.versionHeaderName,
    this.versionQueryName,
    required this.versioningScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': apiManagementName,
      'description': ?description,
      'displayName': displayName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'versionHeaderName': ?versionHeaderName,
      'versionQueryName': ?versionQueryName,
      'versioningScheme': versioningScheme,
    };
  }

  factory ApiVersionSetArgs.fromMap(Map<String, dynamic> map) {
    return ApiVersionSetArgs(
      apiManagementName: (map['apiManagementName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      versionHeaderName: map['versionHeaderName'] == null ? null : (map['versionHeaderName'] as String).input(),
      versionQueryName: map['versionQueryName'] == null ? null : (map['versionQueryName'] as String).input(),
      versioningScheme: (map['versioningScheme'] as String).input(),
    );
  }
}

