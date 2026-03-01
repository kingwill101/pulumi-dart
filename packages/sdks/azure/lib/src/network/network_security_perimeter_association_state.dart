// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkSecurityPerimeterAssociation resources.
class NetworkSecurityPerimeterAssociationState {
  /// Access mode for the associated resource on the Network Security Perimeter. Possible values are `Audit`, `Enforced`, and `Learning`.
  final pulumi.Input<String>? accessMode;
  /// The name which should be used for this Network Security Perimeter Association. Changing this forces a new Network Security Perimeter Association to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Network Security Perimeter Profile. Changing this forces a new Network Security Perimeter Association to be created.
  final pulumi.Input<String>? networkSecurityPerimeterProfileId;
  /// The ID of the associated resource. Changing this forces a new Network Security Perimeter Association to be created.
  ///
  /// > **Note:** A resource can only be associated with one Network Security Perimeter at a time.
  /// If the target resource is already associated with another Network Security Perimeter, the creation of this association may appear to succeed in Terraform but will not be reflected in Azure. In such cases, the association will not actually exist and subsequent Terraform operations may show unexpected behavior.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [NetworkSecurityPerimeterAssociationState].
  /// [accessMode] Access mode for the associated resource on the Network Security Perimeter. Possible values are `Audit`, `Enforced`, and `Learning`.
  /// [name] The name which should be used for this Network Security Perimeter Association. Changing this forces a new Network Security Perimeter Association to be created.
  /// [networkSecurityPerimeterProfileId] The ID of the Network Security Perimeter Profile. Changing this forces a new Network Security Perimeter Association to be created.
  /// [resourceId] The ID of the associated resource. Changing this forces a new Network Security Perimeter Association to be created.
  NetworkSecurityPerimeterAssociationState({
    pulumi.Output<String>? accessMode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkSecurityPerimeterProfileId,
    pulumi.Output<String>? resourceId,
  }) :
      accessMode = pulumi.Input.asOptionalInput<String>(accessMode),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkSecurityPerimeterProfileId = pulumi.Input.asOptionalInput<String>(networkSecurityPerimeterProfileId),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'name': ?name,
      'networkSecurityPerimeterProfileId': ?networkSecurityPerimeterProfileId,
      'resourceId': ?resourceId,
    };
  }

  factory NetworkSecurityPerimeterAssociationState.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityPerimeterAssociationState(
      accessMode: map['accessMode'] == null ? null : pulumi.Output.create<String>(map['accessMode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkSecurityPerimeterProfileId: map['networkSecurityPerimeterProfileId'] == null ? null : pulumi.Output.create<String>(map['networkSecurityPerimeterProfileId'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
    );
  }
}

