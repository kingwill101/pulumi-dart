// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kek_identity_properties.dart';
import 'workspace_key_details.dart';

/// Details of the customer managed key associated with the workspace
class CustomerManagedKeyDetails {
  /// Key encryption key
  final pulumi.Input<KekIdentityProperties>? kekIdentity;
  /// The key object of the workspace
  final pulumi.Input<WorkspaceKeyDetails>? key;

  /// Creates a new [CustomerManagedKeyDetails].
  /// [kekIdentity] Key encryption key
  /// [key] The key object of the workspace
  CustomerManagedKeyDetails({
    this.kekIdentity,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kekIdentity': ?pulumi.Input.mapOptionalInputValue<KekIdentityProperties, Map<String, dynamic>>(kekIdentity, (value) => value.toMap()),
      'key': ?pulumi.Input.mapOptionalInputValue<WorkspaceKeyDetails, Map<String, dynamic>>(key, (value) => value.toMap()),
    };
  }

  factory CustomerManagedKeyDetails.fromMap(Map<String, dynamic> map) {
    return CustomerManagedKeyDetails(
      kekIdentity: map['kekIdentity'] == null ? null : (KekIdentityProperties.fromMap((map['kekIdentity']! as Map).cast<String, dynamic>())).input(),
      key: map['key'] == null ? null : (WorkspaceKeyDetails.fromMap((map['key']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

