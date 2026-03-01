// ignore_for_file: unused_element, unnecessary_cast


class SnatOrigin {
  /// app service
  final String? appService;
  /// Name of the SNAT, name of SNAT should be full path. Full path is the combination of the `partition + SNAT name`,For example `/Common/test-snat`.
  final String? name;

  /// Creates a new [SnatOrigin].
  /// [appService] app service
  /// [name] Name of the SNAT, name of SNAT should be full path. Full path is the combination of the `partition + SNAT name`,For example `/Common/test-snat`.
  SnatOrigin({
    this.appService,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appService': ?appService,
      'name': ?name,
    };
  }

  factory SnatOrigin.fromMap(Map<String, dynamic> map) {
    return SnatOrigin(
      appService: map['appService'] == null ? null : map['appService'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

