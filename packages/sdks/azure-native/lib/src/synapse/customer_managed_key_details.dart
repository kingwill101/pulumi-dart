// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kek_identity_properties.dart';
import 'workspace_key_details.dart';

/// Details of the customer managed key associated with the workspace
class CustomerManagedKeyDetails {
  /// Key encryption key
  final pulumi.Input<KekIdentityProperties?>? kekIdentity;
  /// The key object of the workspace
  final pulumi.Input<WorkspaceKeyDetails?>? key;

  /// Creates a new [CustomerManagedKeyDetails].
  /// [kekIdentity] Key encryption key
  /// [key] The key object of the workspace
  const CustomerManagedKeyDetails({
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
      kekIdentity: (() { final guardedValue = map['kekIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KekIdentityProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkspaceKeyDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
