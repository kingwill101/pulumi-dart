// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_domain_get_domain_args_doc}
/// Arguments for getDomain.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_domain_get_domain_args_doc}
class GetDomainArgs {
  /// The name of the EventGrid Domain resource.
  final pulumi.Input<String> name;
  /// The name of the resource group in which the EventGrid Domain exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDomainArgs].
  /// [name] The name of the EventGrid Domain resource.
  /// [resourceGroupName] The name of the resource group in which the EventGrid Domain exists.
  const GetDomainArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
