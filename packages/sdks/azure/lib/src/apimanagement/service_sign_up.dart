// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_sign_up_terms_of_service.dart';

class ServiceSignUp {
  /// Can users sign up on the development portal?
  final pulumi.Input<bool> enabled;
  /// A `terms_of_service` block as defined below.
  final pulumi.Input<ServiceSignUpTermsOfService> termsOfService;

  /// Creates a new [ServiceSignUp].
  /// [enabled] Can users sign up on the development portal?
  /// [termsOfService] A `terms_of_service` block as defined below.
  ServiceSignUp({
    required this.enabled,
    required this.termsOfService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'termsOfService': pulumi.Input.mapInputValue<ServiceSignUpTermsOfService, Map<String, dynamic>>(termsOfService, (value) => value.toMap()),
    };
  }

  factory ServiceSignUp.fromMap(Map<String, dynamic> map) {
    return ServiceSignUp(
      enabled: (map['enabled'] as bool).input(),
      termsOfService: (ServiceSignUpTermsOfService.fromMap((map['termsOfService'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

