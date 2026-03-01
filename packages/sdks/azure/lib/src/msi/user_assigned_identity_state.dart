// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserAssignedIdentity resources.
class UserAssignedIdentityState {
  /// The ID of the app associated with the Identity.
  final pulumi.Input<String>? clientId;
  /// The isolation scope for the User Assigned Identity. The only possible value is `Regional`.
  final pulumi.Input<String>? isolationScope;
  /// The Azure Region where the User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this User Assigned Identity. Changing this forces a new User Assigned Identity to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Service Principal object associated with the created Identity.
  final pulumi.Input<String>? principalId;
  /// Specifies the name of the Resource Group within which this User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the User Assigned Identity.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Tenant which the Identity belongs to.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [UserAssignedIdentityState].
  /// [clientId] The ID of the app associated with the Identity.
  /// [isolationScope] The isolation scope for the User Assigned Identity. The only possible value is `Regional`.
  /// [location] The Azure Region where the User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created.
  /// [name] Specifies the name of this User Assigned Identity. Changing this forces a new User Assigned Identity to be created.
  /// [principalId] The ID of the Service Principal object associated with the created Identity.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created.
  /// [tags] A mapping of tags which should be assigned to the User Assigned Identity.
  /// [tenantId] The ID of the Tenant which the Identity belongs to.
  UserAssignedIdentityState({
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? isolationScope,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? principalId,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tenantId,
  }) :
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      isolationScope = pulumi.Input.asOptionalInput<String>(isolationScope),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      principalId = pulumi.Input.asOptionalInput<String>(principalId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'isolationScope': ?isolationScope,
      'location': ?location,
      'name': ?name,
      'principalId': ?principalId,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory UserAssignedIdentityState.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityState(
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      isolationScope: map['isolationScope'] == null ? null : pulumi.Output.create<String>(map['isolationScope'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      principalId: map['principalId'] == null ? null : pulumi.Output.create<String>(map['principalId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

