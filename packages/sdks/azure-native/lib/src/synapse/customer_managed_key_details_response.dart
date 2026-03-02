// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kek_identity_properties_response.dart';
import 'workspace_key_details_response.dart';

/// Details of the customer managed key associated with the workspace
class CustomerManagedKeyDetailsResponse {
  /// Key encryption key
  final pulumi.Input<KekIdentityPropertiesResponse>? kekIdentity;
  /// The key object of the workspace
  final pulumi.Input<WorkspaceKeyDetailsResponse>? key;
  /// The customer managed key status on the workspace
  final pulumi.Input<String> status;

  /// Creates a new [CustomerManagedKeyDetailsResponse].
  /// [kekIdentity] Key encryption key
  /// [key] The key object of the workspace
  /// [status] The customer managed key status on the workspace
  CustomerManagedKeyDetailsResponse({
    this.kekIdentity,
    this.key,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kekIdentity': ?pulumi.Input.mapOptionalInputValue<KekIdentityPropertiesResponse, Map<String, dynamic>>(kekIdentity, (value) => value.toMap()),
      'key': ?pulumi.Input.mapOptionalInputValue<WorkspaceKeyDetailsResponse, Map<String, dynamic>>(key, (value) => value.toMap()),
      'status': status,
    };
  }

  factory CustomerManagedKeyDetailsResponse.fromMap(Map<String, dynamic> map) {
    return CustomerManagedKeyDetailsResponse(
      kekIdentity: map['kekIdentity'] == null ? null : (KekIdentityPropertiesResponse.fromMap((map['kekIdentity'] as Map).cast<String, dynamic>())).input(),
      key: map['key'] == null ? null : (WorkspaceKeyDetailsResponse.fromMap((map['key'] as Map).cast<String, dynamic>())).input(),
      status: (map['status'] as String).input(),
    );
  }
}

