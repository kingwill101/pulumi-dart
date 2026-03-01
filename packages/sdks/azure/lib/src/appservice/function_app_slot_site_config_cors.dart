// ignore_for_file: unused_element, unnecessary_cast


class FunctionAppSlotSiteConfigCors {
  /// A list of origins which should be able to make cross-origin calls. `*` can be used to allow all calls.
  final List<String> allowedOrigins;
  /// Are credentials supported?
  final bool? supportCredentials;

  /// Creates a new [FunctionAppSlotSiteConfigCors].
  /// [allowedOrigins] A list of origins which should be able to make cross-origin calls. `*` can be used to allow all calls.
  /// [supportCredentials] Are credentials supported?
  FunctionAppSlotSiteConfigCors({
    required this.allowedOrigins,
    this.supportCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOrigins': allowedOrigins,
      'supportCredentials': ?supportCredentials,
    };
  }

  factory FunctionAppSlotSiteConfigCors.fromMap(Map<String, dynamic> map) {
    return FunctionAppSlotSiteConfigCors(
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
      supportCredentials: map['supportCredentials'] == null ? null : map['supportCredentials'] as bool,
    );
  }
}

