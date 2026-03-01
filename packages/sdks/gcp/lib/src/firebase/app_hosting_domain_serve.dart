// ignore_for_file: unused_element, unnecessary_cast

import 'app_hosting_domain_serve_redirect.dart';

class AppHostingDomainServe {
  /// Specifies redirect behavior for a domain.
  /// Structure is documented below.
  final AppHostingDomainServeRedirect? redirect;

  /// Creates a new [AppHostingDomainServe].
  /// [redirect] Specifies redirect behavior for a domain.
  AppHostingDomainServe({
    this.redirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirect': ?redirect == null ? null : redirect!.toMap(),
    };
  }

  factory AppHostingDomainServe.fromMap(Map<String, dynamic> map) {
    return AppHostingDomainServe(
      redirect: map['redirect'] == null ? null : AppHostingDomainServeRedirect.fromMap((map['redirect'] as Map).cast<String, dynamic>()),
    );
  }
}

