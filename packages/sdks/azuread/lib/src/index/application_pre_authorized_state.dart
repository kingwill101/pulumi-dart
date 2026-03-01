// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationPreAuthorized resources.
class ApplicationPreAuthorizedState {
  /// The resource ID of the application for which permissions are being authorized. Changing this field forces a new resource to be created.
  final pulumi.Input<String>? applicationId;
  /// The client ID of the application being authorized. Changing this field forces a new resource to be created.
  final pulumi.Input<String>? authorizedClientId;
  /// A set of permission scope IDs required by the authorized application.
  final pulumi.Input<List<String>>? permissionIds;

  /// Creates a new [ApplicationPreAuthorizedState].
  /// [applicationId] The resource ID of the application for which permissions are being authorized. Changing this field forces a new resource to be created.
  /// [authorizedClientId] The client ID of the application being authorized. Changing this field forces a new resource to be created.
  /// [permissionIds] A set of permission scope IDs required by the authorized application.
  ApplicationPreAuthorizedState({
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? authorizedClientId,
    pulumi.Output<List<String>>? permissionIds,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      authorizedClientId = pulumi.Input.asOptionalInput<String>(authorizedClientId),
      permissionIds = pulumi.Input.asOptionalInput<List<String>>(permissionIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'authorizedClientId': ?authorizedClientId,
      'permissionIds': ?permissionIds,
    };
  }

  factory ApplicationPreAuthorizedState.fromMap(Map<String, dynamic> map) {
    return ApplicationPreAuthorizedState(
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      authorizedClientId: map['authorizedClientId'] == null ? null : pulumi.Output.create<String>(map['authorizedClientId'] as String),
      permissionIds: map['permissionIds'] == null ? null : pulumi.Output.create<List<String>>((map['permissionIds'] as List).cast<String>()),
    );
  }
}

