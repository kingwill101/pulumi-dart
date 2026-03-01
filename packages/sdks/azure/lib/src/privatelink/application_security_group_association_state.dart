// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationSecurityGroupAssociation resources.
class ApplicationSecurityGroupAssociationState {
  /// The id of application security group to associate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationSecurityGroupId;
  /// The id of private endpoint to associate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? privateEndpointId;

  /// Creates a new [ApplicationSecurityGroupAssociationState].
  /// [applicationSecurityGroupId] The id of application security group to associate. Changing this forces a new resource to be created.
  /// [privateEndpointId] The id of private endpoint to associate. Changing this forces a new resource to be created.
  ApplicationSecurityGroupAssociationState({
    pulumi.Output<String>? applicationSecurityGroupId,
    pulumi.Output<String>? privateEndpointId,
  }) :
      applicationSecurityGroupId = pulumi.Input.asOptionalInput<String>(applicationSecurityGroupId),
      privateEndpointId = pulumi.Input.asOptionalInput<String>(privateEndpointId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationSecurityGroupId': ?applicationSecurityGroupId,
      'privateEndpointId': ?privateEndpointId,
    };
  }

  factory ApplicationSecurityGroupAssociationState.fromMap(Map<String, dynamic> map) {
    return ApplicationSecurityGroupAssociationState(
      applicationSecurityGroupId: map['applicationSecurityGroupId'] == null ? null : pulumi.Output.create<String>(map['applicationSecurityGroupId'] as String),
      privateEndpointId: map['privateEndpointId'] == null ? null : pulumi.Output.create<String>(map['privateEndpointId'] as String),
    );
  }
}

