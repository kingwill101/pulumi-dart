// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiVersionSet resources.
class ApiVersionSetState {
  /// The name of the API Management Service in which the API Version Set should exist. May only contain alphanumeric characters and dashes up to 50 characters in length. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// The description of API Version Set.
  final pulumi.Input<String>? description;
  /// The display name of this API Version Set.
  final pulumi.Input<String>? displayName;
  /// The name of the API Version Set. May only contain alphanumeric characters and dashes up to 80 characters in length. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group in which the parent API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The name of the Header which should be read from Inbound Requests which defines the API Version.
  ///
  /// &gt; **Note:** This must be specified when `versioningScheme` is set to `Header`.
  final pulumi.Input<String>? versionHeaderName;
  /// The name of the Query String which should be read from Inbound Requests which defines the API Version.
  ///
  /// &gt; **Note:** This must be specified when `versioningScheme` is set to `Query`.
  final pulumi.Input<String>? versionQueryName;
  /// Specifies where in an Inbound HTTP Request that the API Version should be read from. Possible values are `Header`, `Query` and `Segment`.
  final pulumi.Input<String>? versioningScheme;

  /// Creates a new [ApiVersionSetState].
  /// [apiManagementName] The name of the API Management Service in which the API Version Set should exist. May only contain alphanumeric characters and dashes up to 50 characters in length. Changing this forces a new resource to be created.
  /// [description] The description of API Version Set.
  /// [displayName] The display name of this API Version Set.
  /// [name] The name of the API Version Set. May only contain alphanumeric characters and dashes up to 80 characters in length. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the parent API Management Service exists. Changing this forces a new resource to be created.
  /// [versionHeaderName] The name of the Header which should be read from Inbound Requests which defines the API Version.
  /// [versionQueryName] The name of the Query String which should be read from Inbound Requests which defines the API Version.
  /// [versioningScheme] Specifies where in an Inbound HTTP Request that the API Version should be read from. Possible values are `Header`, `Query` and `Segment`.
  const ApiVersionSetState({
    this.apiManagementName,
    this.description,
    this.displayName,
    this.name,
    this.resourceGroupName,
    this.versionHeaderName,
    this.versionQueryName,
    this.versioningScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'versionHeaderName': ?versionHeaderName,
      'versionQueryName': ?versionQueryName,
      'versioningScheme': ?versioningScheme,
    };
  }

  factory ApiVersionSetState.fromMap(Map<String, dynamic> map) {
    return ApiVersionSetState(
      apiManagementName: (() { final guardedValue = map['apiManagementName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionHeaderName: (() { final guardedValue = map['versionHeaderName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionQueryName: (() { final guardedValue = map['versionQueryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versioningScheme: (() { final guardedValue = map['versioningScheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
