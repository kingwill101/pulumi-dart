// ignore_for_file: unused_element, unnecessary_cast


/// ClientIPConfig represents the configurations of Client IP based session affinity.
class ClientIPConfigPatch {
  /// timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be >0 && <=86400(for 1 day) if ServiceAffinity == "ClientIP". Default value is 10800(for 3 hours).
  final int? timeoutSeconds;

  /// Creates a new [ClientIPConfigPatch].
  /// [timeoutSeconds] timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be >0 && <=86400(for 1 day) if ServiceAffinity == "ClientIP". Default value is 10800(for 3 hours).
  ClientIPConfigPatch({
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory ClientIPConfigPatch.fromMap(Map<String, dynamic> map) {
    return ClientIPConfigPatch(
      timeoutSeconds: map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}

