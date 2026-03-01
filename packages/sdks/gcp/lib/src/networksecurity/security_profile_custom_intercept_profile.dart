// ignore_for_file: unused_element, unnecessary_cast


class SecurityProfileCustomInterceptProfile {
  /// The Intercept Endpoint Group to which matching traffic should be intercepted.
  /// Format: projects/{project_id}/locations/global/interceptEndpointGroups/{endpoint_group_id}
  final String interceptEndpointGroup;

  /// Creates a new [SecurityProfileCustomInterceptProfile].
  /// [interceptEndpointGroup] The Intercept Endpoint Group to which matching traffic should be intercepted.
  SecurityProfileCustomInterceptProfile({
    required this.interceptEndpointGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interceptEndpointGroup': interceptEndpointGroup,
    };
  }

  factory SecurityProfileCustomInterceptProfile.fromMap(Map<String, dynamic> map) {
    return SecurityProfileCustomInterceptProfile(
      interceptEndpointGroup: map['interceptEndpointGroup'] as String,
    );
  }
}

