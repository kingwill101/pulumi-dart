// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_status_response_error_details.dart';

/// Gets or sets the status of the account.
class AccountPropertiesResponseAccountStatus {
  /// Gets the account status code.
  final pulumi.Input<String> accountProvisioningState;
  /// Gets the account error details.
  final pulumi.Input<AccountStatusResponseErrorDetails> errorDetails;

  /// Creates a new [AccountPropertiesResponseAccountStatus].
  /// [accountProvisioningState] Gets the account status code.
  /// [errorDetails] Gets the account error details.
  const AccountPropertiesResponseAccountStatus({
    required this.accountProvisioningState,
    required this.errorDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountProvisioningState': accountProvisioningState,
      'errorDetails': pulumi.Input.mapInputValue<AccountStatusResponseErrorDetails, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
    };
  }

  factory AccountPropertiesResponseAccountStatus.fromMap(Map<String, dynamic> map) {
    return AccountPropertiesResponseAccountStatus(
      accountProvisioningState: pulumi.Input.fromValue(map['accountProvisioningState'] as String),
      errorDetails: pulumi.Input.fromValue(AccountStatusResponseErrorDetails.fromMap((map['errorDetails']! as Map).cast<String, dynamic>())),
    );
  }
}

