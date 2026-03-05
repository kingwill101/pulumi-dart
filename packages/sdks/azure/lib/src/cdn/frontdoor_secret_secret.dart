// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_secret_secret_customer_certificate.dart';

class FrontdoorSecretSecret {
  /// A `customer_certificate` block as defined below. Changing this forces a new Front Door Secret to be created.
  final pulumi.Input<List<FrontdoorSecretSecretCustomerCertificate>> customerCertificates;

  /// Creates a new [FrontdoorSecretSecret].
  /// [customerCertificates] A `customer_certificate` block as defined below. Changing this forces a new Front Door Secret to be created.
  FrontdoorSecretSecret({
    required this.customerCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerCertificates': pulumi.Input.mapInputValue<List<FrontdoorSecretSecretCustomerCertificate>, List<Map<String, dynamic>>>(customerCertificates, (value) => pulumi.Input.encodeList<FrontdoorSecretSecretCustomerCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FrontdoorSecretSecret.fromMap(Map<String, dynamic> map) {
    return FrontdoorSecretSecret(
      customerCertificates: pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorSecretSecretCustomerCertificate>(map['customerCertificates']!, (value) => FrontdoorSecretSecretCustomerCertificate.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

