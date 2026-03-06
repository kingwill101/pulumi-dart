// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatelink_application_security_group_association_application_security_group_association_args_doc}
/// The set of arguments for ApplicationSecurityGroupAssociation.
/// {@endtemplate}
/// {@macro pulumi_privatelink_application_security_group_association_application_security_group_association_args_doc}
class ApplicationSecurityGroupAssociationArgs {
  /// The id of application security group to associate. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationSecurityGroupId;
  /// The id of private endpoint to associate. Changing this forces a new resource to be created.
  final pulumi.Input<String> privateEndpointId;

  /// Creates a new [ApplicationSecurityGroupAssociationArgs].
  /// [applicationSecurityGroupId] The id of application security group to associate. Changing this forces a new resource to be created.
  /// [privateEndpointId] The id of private endpoint to associate. Changing this forces a new resource to be created.
  const ApplicationSecurityGroupAssociationArgs({
    required this.applicationSecurityGroupId,
    required this.privateEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationSecurityGroupId': applicationSecurityGroupId,
      'privateEndpointId': privateEndpointId,
    };
  }

  factory ApplicationSecurityGroupAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationSecurityGroupAssociationArgs(
      applicationSecurityGroupId: pulumi.Input.fromValue(map['applicationSecurityGroupId'] as String),
      privateEndpointId: pulumi.Input.fromValue(map['privateEndpointId'] as String),
    );
  }
}

