// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_security_perimeter_association_network_security_perimeter_association_args_doc}
/// The set of arguments for NetworkSecurityPerimeterAssociation.
/// {@endtemplate}
/// {@macro pulumi_network_network_security_perimeter_association_network_security_perimeter_association_args_doc}
class NetworkSecurityPerimeterAssociationArgs {
  /// Access mode for the associated resource on the Network Security Perimeter. Possible values are `Audit`, `Enforced`, and `Learning`.
  final pulumi.Input<String> accessMode;
  /// The name which should be used for this Network Security Perimeter Association. Changing this forces a new Network Security Perimeter Association to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Network Security Perimeter Profile. Changing this forces a new Network Security Perimeter Association to be created.
  final pulumi.Input<String> networkSecurityPerimeterProfileId;
  /// The ID of the associated resource. Changing this forces a new Network Security Perimeter Association to be created.
  ///
  /// > **Note:** A resource can only be associated with one Network Security Perimeter at a time.
  /// If the target resource is already associated with another Network Security Perimeter, the creation of this association may appear to succeed in Terraform but will not be reflected in Azure. In such cases, the association will not actually exist and subsequent Terraform operations may show unexpected behavior.
  final pulumi.Input<String> resourceId;

  /// Creates a new [NetworkSecurityPerimeterAssociationArgs].
  /// [accessMode] Access mode for the associated resource on the Network Security Perimeter. Possible values are `Audit`, `Enforced`, and `Learning`.
  /// [name] The name which should be used for this Network Security Perimeter Association. Changing this forces a new Network Security Perimeter Association to be created.
  /// [networkSecurityPerimeterProfileId] The ID of the Network Security Perimeter Profile. Changing this forces a new Network Security Perimeter Association to be created.
  /// [resourceId] The ID of the associated resource. Changing this forces a new Network Security Perimeter Association to be created.
  NetworkSecurityPerimeterAssociationArgs({
    required this.accessMode,
    this.name,
    required this.networkSecurityPerimeterProfileId,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': accessMode,
      'name': ?name,
      'networkSecurityPerimeterProfileId': networkSecurityPerimeterProfileId,
      'resourceId': resourceId,
    };
  }

  factory NetworkSecurityPerimeterAssociationArgs.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityPerimeterAssociationArgs(
      accessMode: (map['accessMode'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkSecurityPerimeterProfileId: (map['networkSecurityPerimeterProfileId'] as String).input(),
      resourceId: (map['resourceId'] as String).input(),
    );
  }
}

