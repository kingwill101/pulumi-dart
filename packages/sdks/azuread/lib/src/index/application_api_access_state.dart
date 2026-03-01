// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationApiAccess resources.
class ApplicationApiAccessState {
  /// The client ID of the API to which access is being granted. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiClientId;
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationId;
  /// A set of role IDs to be granted to the application, as published by the API.
  final pulumi.Input<List<String>>? roleIds;
  /// A set of scope IDs to be granted to the application, as published by the API.
  ///
  /// > At least one of `role_ids` or `scope_ids` must be specified.
  final pulumi.Input<List<String>>? scopeIds;

  /// Creates a new [ApplicationApiAccessState].
  /// [apiClientId] The client ID of the API to which access is being granted. Changing this forces a new resource to be created.
  /// [applicationId] The resource ID of the application registration. Changing this forces a new resource to be created.
  /// [roleIds] A set of role IDs to be granted to the application, as published by the API.
  /// [scopeIds] A set of scope IDs to be granted to the application, as published by the API.
  ApplicationApiAccessState({
    pulumi.Output<String>? apiClientId,
    pulumi.Output<String>? applicationId,
    pulumi.Output<List<String>>? roleIds,
    pulumi.Output<List<String>>? scopeIds,
  }) :
      apiClientId = pulumi.Input.asOptionalInput<String>(apiClientId),
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      roleIds = pulumi.Input.asOptionalInput<List<String>>(roleIds),
      scopeIds = pulumi.Input.asOptionalInput<List<String>>(scopeIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiClientId': ?apiClientId,
      'applicationId': ?applicationId,
      'roleIds': ?roleIds,
      'scopeIds': ?scopeIds,
    };
  }

  factory ApplicationApiAccessState.fromMap(Map<String, dynamic> map) {
    return ApplicationApiAccessState(
      apiClientId: map['apiClientId'] == null ? null : pulumi.Output.create<String>(map['apiClientId'] as String),
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      roleIds: map['roleIds'] == null ? null : pulumi.Output.create<List<String>>((map['roleIds'] as List).cast<String>()),
      scopeIds: map['scopeIds'] == null ? null : pulumi.Output.create<List<String>>((map['scopeIds'] as List).cast<String>()),
    );
  }
}

