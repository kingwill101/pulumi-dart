// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_managed_encryption_response.dart';

/// Represents a Replica for this Secret.
class ReplicaResponse {
  /// Optional. The customer-managed encryption configuration of the User-Managed Replica. If no configuration is provided, Google-managed default encryption is used. Updates to the Secret encryption configuration only apply to SecretVersions added afterwards. They do not apply retroactively to existing SecretVersions.
  final pulumi.Input<CustomerManagedEncryptionResponse> customerManagedEncryption;
  /// The canonical IDs of the location to replicate data. For example: `"us-east1"`.
  final pulumi.Input<String> location;

  /// Creates a new [ReplicaResponse].
  /// [customerManagedEncryption] Optional. The customer-managed encryption configuration of the User-Managed Replica. If no configuration is provided, Google-managed default encryption is used. Updates to the Secret encryption configuration only apply to SecretVersions added afterwards. They do not apply retroactively to existing SecretVersions.
  /// [location] The canonical IDs of the location to replicate data. For example: `"us-east1"`.
  ReplicaResponse({
    required this.customerManagedEncryption,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedEncryption': pulumi.Input.mapInputValue<CustomerManagedEncryptionResponse, Map<String, dynamic>>(customerManagedEncryption, (value) => value.toMap()),
      'location': location,
    };
  }

  factory ReplicaResponse.fromMap(Map<String, dynamic> map) {
    return ReplicaResponse(
      customerManagedEncryption: pulumi.Input.fromValue(CustomerManagedEncryptionResponse.fromMap((map['customerManagedEncryption']! as Map).cast<String, dynamic>())),
      location: pulumi.Input.fromValue(map['location'] as String),
    );
  }
}

