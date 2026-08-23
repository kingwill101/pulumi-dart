// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_services_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_api_services_service_args_doc}
class ServiceArgs {
  /// an optional description of the service
  final pulumi.Input<String> description;
  /// an optional list of items to add during service creation
  final pulumi.Input<List<dynamic>> items;
  /// the name of the service
  final pulumi.Input<String> name;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// the service owner name
  final pulumi.Input<String> ownerName;
  /// the service owner type
  final pulumi.Input<String> ownerType;
  /// an optional list of properties to set on the service
  final pulumi.Input<List<dynamic>> properties;

  /// Creates a new [ServiceArgs].
  /// [description] an optional description of the service
  /// [items] an optional list of items to add during service creation
  /// [name] the name of the service
  /// [orgName] The organization name
  /// [ownerName] the service owner name
  /// [ownerType] the service owner type
  /// [properties] an optional list of properties to set on the service
  const ServiceArgs({
    required this.description,
    required this.items,
    required this.name,
    required this.orgName,
    required this.ownerName,
    required this.ownerType,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'items': items,
      'name': name,
      'orgName': orgName,
      'ownerName': ownerName,
      'ownerType': ownerType,
      'properties': properties,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      description: pulumi.Input.fromValue(map['description'] as String),
      items: pulumi.Input.fromValue((map['items'] as List).cast<dynamic>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      ownerName: pulumi.Input.fromValue(map['ownerName'] as String),
      ownerType: pulumi.Input.fromValue(map['ownerType'] as String),
      properties: pulumi.Input.fromValue((map['properties'] as List).cast<dynamic>()),
    );
  }
}
