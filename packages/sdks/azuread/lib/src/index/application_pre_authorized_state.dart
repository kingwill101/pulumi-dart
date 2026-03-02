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
    this.applicationId,
    this.authorizedClientId,
    this.permissionIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'authorizedClientId': ?authorizedClientId,
      'permissionIds': ?permissionIds,
    };
  }

  factory ApplicationPreAuthorizedState.fromMap(Map<String, dynamic> map) {
    return ApplicationPreAuthorizedState(
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      authorizedClientId: map['authorizedClientId'] == null ? null : (map['authorizedClientId'] as String).input(),
      permissionIds: map['permissionIds'] == null ? null : ((map['permissionIds'] as List).cast<String>()).input(),
    );
  }
}

