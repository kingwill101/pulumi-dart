// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_product_access_group_default_iam_role_config.dart';
import 'data_product_access_group_principal.dart';

class DataProductAccessGroup {
  /// Configuration for the default IAM role associated with the access group.
  /// Structure is documented below.
  final pulumi.Input<DataProductAccessGroupDefaultIamRoleConfig?>? defaultIamRoleConfig;
  /// Description of the access group.
  final pulumi.Input<String?>? description;
  /// User friendly display name.
  final pulumi.Input<String> displayName;
  /// Unique identifier of the access group.
  final pulumi.Input<String> groupId;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> id;
  /// The principal entity.
  /// Structure is documented below.
  final pulumi.Input<DataProductAccessGroupPrincipal> principal;

  /// Creates a new [DataProductAccessGroup].
  /// [defaultIamRoleConfig] Configuration for the default IAM role associated with the access group.
  /// [description] Description of the access group.
  /// [displayName] User friendly display name.
  /// [groupId] Unique identifier of the access group.
  /// [id] The identifier for this object. Format specified above.
  /// [principal] The principal entity.
  const DataProductAccessGroup({
    this.defaultIamRoleConfig,
    this.description,
    required this.displayName,
    required this.groupId,
    required this.id,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultIamRoleConfig': ?pulumi.Input.mapOptionalInputValue<DataProductAccessGroupDefaultIamRoleConfig, Map<String, dynamic>>(defaultIamRoleConfig, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'groupId': groupId,
      'id': id,
      'principal': pulumi.Input.mapInputValue<DataProductAccessGroupPrincipal, Map<String, dynamic>>(principal, (value) => value.toMap()),
    };
  }

  factory DataProductAccessGroup.fromMap(Map<String, dynamic> map) {
    return DataProductAccessGroup(
      defaultIamRoleConfig: (() { final guardedValue = map['defaultIamRoleConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataProductAccessGroupDefaultIamRoleConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      principal: pulumi.Input.fromValue(DataProductAccessGroupPrincipal.fromMap((map['principal']! as Map).cast<String, dynamic>())),
    );
  }
}
