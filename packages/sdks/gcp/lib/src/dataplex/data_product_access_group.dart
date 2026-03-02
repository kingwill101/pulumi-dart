// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_product_access_group_principal.dart';

class DataProductAccessGroup {
  /// Description of the access group.
  final pulumi.Input<String>? description;
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
  /// [description] Description of the access group.
  /// [displayName] User friendly display name.
  /// [groupId] Unique identifier of the access group.
  /// [id] The identifier for this object. Format specified above.
  /// [principal] The principal entity.
  DataProductAccessGroup({
    this.description,
    required this.displayName,
    required this.groupId,
    required this.id,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'groupId': groupId,
      'id': id,
      'principal': pulumi.Input.mapInputValue<DataProductAccessGroupPrincipal, Map<String, dynamic>>(principal, (value) => value.toMap()),
    };
  }

  factory DataProductAccessGroup.fromMap(Map<String, dynamic> map) {
    return DataProductAccessGroup(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      groupId: (map['groupId'] as String).input(),
      id: (map['id'] as String).input(),
      principal: (DataProductAccessGroupPrincipal.fromMap((map['principal'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

