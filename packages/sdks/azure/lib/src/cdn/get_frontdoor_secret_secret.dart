// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_secret_secret_customer_certificate.dart';

class GetFrontdoorSecretSecret {
  /// A `customer_certificate` block as defined below.
  final pulumi.Input<List<GetFrontdoorSecretSecretCustomerCertificate>> customerCertificates;

  /// Creates a new [GetFrontdoorSecretSecret].
  /// [customerCertificates] A `customer_certificate` block as defined below.
  GetFrontdoorSecretSecret({
    required this.customerCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerCertificates': pulumi.Input.mapInputValue<List<GetFrontdoorSecretSecretCustomerCertificate>, List<Map<String, dynamic>>>(customerCertificates, (value) => pulumi.Input.encodeList<GetFrontdoorSecretSecretCustomerCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFrontdoorSecretSecret.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorSecretSecret(
      customerCertificates: (pulumi.Input.decodeList<GetFrontdoorSecretSecretCustomerCertificate>(map['customerCertificates'], (value) => GetFrontdoorSecretSecretCustomerCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

