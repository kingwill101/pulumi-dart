// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_account_response.dart';

/// PrincipalInfo represents an Identity oneof.
class PrincipalInfoResponse {
  /// A GCP service account.
  final pulumi.Input<ServiceAccountResponse> serviceAccount;

  /// Creates a new [PrincipalInfoResponse].
  /// [serviceAccount] A GCP service account.
  const PrincipalInfoResponse({
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccount': pulumi.Input.mapInputValue<ServiceAccountResponse, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
    };
  }

  factory PrincipalInfoResponse.fromMap(Map<String, dynamic> map) {
    return PrincipalInfoResponse(
      serviceAccount: pulumi.Input.fromValue(ServiceAccountResponse.fromMap((map['serviceAccount']! as Map).cast<String, dynamic>())),
    );
  }
}

