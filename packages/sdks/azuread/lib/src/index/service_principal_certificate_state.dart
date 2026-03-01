// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServicePrincipalCertificate resources.
class ServicePrincipalCertificateState {
  /// Specifies the encoding used for the supplied certificate data. Must be one of `pem`, `base64` or `hex`. Defaults to `pem`.
  ///
  /// > **Tip for Azure Key Vault** The `hex` encoding option is useful for consuming certificate data from the azurerm_key_vault_certificate resource.
  final pulumi.Input<String>? encoding;
  /// The end date until which the certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). Changing this field forces a new resource to be created.
  final pulumi.Input<String>? endDate;
  /// A relative duration for which the certificate is valid until, for example `240h` (10 days) or `2400h30m`. Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h". Changing this field forces a new resource to be created.
  ///
  /// > One of `end_date` or `end_date_relative` must be set. The maximum duration is determined by Azure AD.
  final pulumi.Input<String>? endDateRelative;
  /// A UUID used to uniquely identify this certificate. If not specified a UUID will be automatically generated. Changing this field forces a new resource to be created.
  final pulumi.Input<String>? keyId;
  /// The ID of the service principal for which this certificate should be created. Changing this field forces a new resource to be created.
  final pulumi.Input<String>? servicePrincipalId;
  /// The start date from which the certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If this isn't specified, the value is determined by Azure Active Directory and is usually the start date of the certificate for asymmetric keys, or the current timestamp for symmetric keys. Changing this field forces a new resource to be created.
  final pulumi.Input<String>? startDate;
  /// The type of key/certificate. Must be one of `AsymmetricX509Cert` or `Symmetric`. Changing this fields forces a new resource to be created.
  final pulumi.Input<String>? type;
  /// The certificate data, which can be PEM encoded, base64 encoded DER or hexadecimal encoded DER. See also the `encoding` argument.
  final pulumi.Input<String>? value;

  /// Creates a new [ServicePrincipalCertificateState].
  /// [encoding] Specifies the encoding used for the supplied certificate data. Must be one of `pem`, `base64` or `hex`. Defaults to `pem`.
  /// [endDate] The end date until which the certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). Changing this field forces a new resource to be created.
  /// [endDateRelative] A relative duration for which the certificate is valid until, for example `240h` (10 days) or `2400h30m`. Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h". Changing this field forces a new resource to be created.
  /// [keyId] A UUID used to uniquely identify this certificate. If not specified a UUID will be automatically generated. Changing this field forces a new resource to be created.
  /// [servicePrincipalId] The ID of the service principal for which this certificate should be created. Changing this field forces a new resource to be created.
  /// [startDate] The start date from which the certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If this isn't specified, the value is determined by Azure Active Directory and is usually the start date of the certificate for asymmetric keys, or the current timestamp for symmetric keys. Changing this field forces a new resource to be created.
  /// [type] The type of key/certificate. Must be one of `AsymmetricX509Cert` or `Symmetric`. Changing this fields forces a new resource to be created.
  /// [value] The certificate data, which can be PEM encoded, base64 encoded DER or hexadecimal encoded DER. See also the `encoding` argument.
  ServicePrincipalCertificateState({
    pulumi.Output<String>? encoding,
    pulumi.Output<String>? endDate,
    pulumi.Output<String>? endDateRelative,
    pulumi.Output<String>? keyId,
    pulumi.Output<String>? servicePrincipalId,
    pulumi.Output<String>? startDate,
    pulumi.Output<String>? type,
    pulumi.Output<String>? value,
  }) :
      encoding = pulumi.Input.asOptionalInput<String>(encoding),
      endDate = pulumi.Input.asOptionalInput<String>(endDate),
      endDateRelative = pulumi.Input.asOptionalInput<String>(endDateRelative),
      keyId = pulumi.Input.asOptionalInput<String>(keyId),
      servicePrincipalId = pulumi.Input.asOptionalInput<String>(servicePrincipalId),
      startDate = pulumi.Input.asOptionalInput<String>(startDate),
      type = pulumi.Input.asOptionalInput<String>(type),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encoding': ?encoding,
      'endDate': ?endDate,
      'endDateRelative': ?endDateRelative,
      'keyId': ?keyId,
      'servicePrincipalId': ?servicePrincipalId,
      'startDate': ?startDate,
      'type': ?type,
      'value': ?value,
    };
  }

  factory ServicePrincipalCertificateState.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalCertificateState(
      encoding: map['encoding'] == null ? null : pulumi.Output.create<String>(map['encoding'] as String),
      endDate: map['endDate'] == null ? null : pulumi.Output.create<String>(map['endDate'] as String),
      endDateRelative: map['endDateRelative'] == null ? null : pulumi.Output.create<String>(map['endDateRelative'] as String),
      keyId: map['keyId'] == null ? null : pulumi.Output.create<String>(map['keyId'] as String),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : pulumi.Output.create<String>(map['servicePrincipalId'] as String),
      startDate: map['startDate'] == null ? null : pulumi.Output.create<String>(map['startDate'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

