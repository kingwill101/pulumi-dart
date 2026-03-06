// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_domain_serve_redirect.dart';

class AppHostingDomainServe {
  /// Specifies redirect behavior for a domain.
  /// Structure is documented below.
  final pulumi.Input<AppHostingDomainServeRedirect>? redirect;

  /// Creates a new [AppHostingDomainServe].
  /// [redirect] Specifies redirect behavior for a domain.
  const AppHostingDomainServe({
    this.redirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirect': ?pulumi.Input.mapOptionalInputValue<AppHostingDomainServeRedirect, Map<String, dynamic>>(redirect, (value) => value.toMap()),
    };
  }

  factory AppHostingDomainServe.fromMap(Map<String, dynamic> map) {
    return AppHostingDomainServe(
      redirect: (() { final guardedValue = map['redirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppHostingDomainServeRedirect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

