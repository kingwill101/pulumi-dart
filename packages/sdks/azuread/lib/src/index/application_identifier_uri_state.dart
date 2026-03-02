// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationIdentifierUri resources.
class ApplicationIdentifierUriState {
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationId;
  /// The user-defined URI that uniquely identifies an application within its Azure AD tenant, or within a verified custom domain if the application is multi-tenant. Changing this forces a new resource to be created.
  final pulumi.Input<String>? identifierUri;

  /// Creates a new [ApplicationIdentifierUriState].
  /// [applicationId] The resource ID of the application registration. Changing this forces a new resource to be created.
  /// [identifierUri] The user-defined URI that uniquely identifies an application within its Azure AD tenant, or within a verified custom domain if the application is multi-tenant. Changing this forces a new resource to be created.
  ApplicationIdentifierUriState({
    this.applicationId,
    this.identifierUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'identifierUri': ?identifierUri,
    };
  }

  factory ApplicationIdentifierUriState.fromMap(Map<String, dynamic> map) {
    return ApplicationIdentifierUriState(
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      identifierUri: map['identifierUri'] == null ? null : (map['identifierUri'] as String).input(),
    );
  }
}

