// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_status_error_details_response.dart';

/// Gets or sets the status of the account.
class AccountPropertiesAccountStatusResponse {
  /// Gets the account status code.
  final pulumi.Input<String> accountProvisioningState;
  /// Gets the account error details.
  final pulumi.Input<AccountStatusErrorDetailsResponse> errorDetails;

  /// Creates a new [AccountPropertiesAccountStatusResponse].
  /// [accountProvisioningState] Gets the account status code.
  /// [errorDetails] Gets the account error details.
  const AccountPropertiesAccountStatusResponse({
    required this.accountProvisioningState,
    required this.errorDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountProvisioningState': accountProvisioningState,
      'errorDetails': pulumi.Input.mapInputValue<AccountStatusErrorDetailsResponse, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
    };
  }

  factory AccountPropertiesAccountStatusResponse.fromMap(Map<String, dynamic> map) {
    return AccountPropertiesAccountStatusResponse(
      accountProvisioningState: pulumi.Input.fromValue(map['accountProvisioningState'] as String),
      errorDetails: pulumi.Input.fromValue(AccountStatusErrorDetailsResponse.fromMap((map['errorDetails']! as Map).cast<String, dynamic>())),
    );
  }
}
