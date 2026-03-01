// ignore_for_file: unused_element, unnecessary_cast


class GSuitePrincipalResponse {
  /// This principal represents all users of the Google Workspace domain of the customer.
  final bool gsuiteDomain;
  /// This principal references a Google Workspace group name.
  final String gsuiteGroupEmail;
  /// This principal references a Google Workspace user account.
  final String gsuiteUserEmail;

  /// Creates a new [GSuitePrincipalResponse].
  /// [gsuiteDomain] This principal represents all users of the Google Workspace domain of the customer.
  /// [gsuiteGroupEmail] This principal references a Google Workspace group name.
  /// [gsuiteUserEmail] This principal references a Google Workspace user account.
  GSuitePrincipalResponse({
    required this.gsuiteDomain,
    required this.gsuiteGroupEmail,
    required this.gsuiteUserEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gsuiteDomain': gsuiteDomain,
      'gsuiteGroupEmail': gsuiteGroupEmail,
      'gsuiteUserEmail': gsuiteUserEmail,
    };
  }

  factory GSuitePrincipalResponse.fromMap(Map<String, dynamic> map) {
    return GSuitePrincipalResponse(
      gsuiteDomain: map['gsuiteDomain'] as bool,
      gsuiteGroupEmail: map['gsuiteGroupEmail'] as String,
      gsuiteUserEmail: map['gsuiteUserEmail'] as String,
    );
  }
}

