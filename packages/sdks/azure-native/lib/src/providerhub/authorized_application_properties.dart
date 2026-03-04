// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_data_authorization.dart';
import 'application_provider_authorization.dart';

class AuthorizedApplicationProperties {
  /// The authorizations that determine the level of data access permissions on the specified resource types.
  final pulumi.Input<List<ApplicationDataAuthorization>>? dataAuthorizations;
  final pulumi.Input<ApplicationProviderAuthorization>? providerAuthorization;

  /// Creates a new [AuthorizedApplicationProperties].
  /// [dataAuthorizations] The authorizations that determine the level of data access permissions on the specified resource types.
  /// [providerAuthorization] Optional.
  AuthorizedApplicationProperties({
    this.dataAuthorizations,
    this.providerAuthorization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAuthorizations':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationDataAuthorization>,
            List<Map<String, dynamic>>
          >(
            dataAuthorizations,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationDataAuthorization,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'providerAuthorization':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationProviderAuthorization,
            Map<String, dynamic>
          >(providerAuthorization, (value) => value.toMap()),
    };
  }

  factory AuthorizedApplicationProperties.fromMap(Map<String, dynamic> map) {
    return AuthorizedApplicationProperties(
      dataAuthorizations: (() {
        final guardedValue = map['dataAuthorizations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ApplicationDataAuthorization>(
            guardedValue,
            (value) => ApplicationDataAuthorization.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      providerAuthorization: (() {
        final guardedValue = map['providerAuthorization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationProviderAuthorization.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
