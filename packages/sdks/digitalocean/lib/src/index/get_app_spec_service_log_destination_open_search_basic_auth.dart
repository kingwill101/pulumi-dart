// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecServiceLogDestinationOpenSearchBasicAuth {
  /// Password for user defined in User. Is required when endpoint is set. Cannot be set if using a DigitalOcean DBaaS OpenSearch cluster.
  final pulumi.Input<String>? password;

  /// Username to authenticate with. Only required when endpoint is set. Defaults to doadmin when cluster_name is set.
  final pulumi.Input<String>? user;

  /// Creates a new [GetAppSpecServiceLogDestinationOpenSearchBasicAuth].
  /// [password] Password for user defined in User. Is required when endpoint is set. Cannot be set if using a DigitalOcean DBaaS OpenSearch cluster.
  /// [user] Username to authenticate with. Only required when endpoint is set. Defaults to doadmin when cluster_name is set.
  GetAppSpecServiceLogDestinationOpenSearchBasicAuth({
    this.password,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': ?password, 'user': ?user};
  }

  factory GetAppSpecServiceLogDestinationOpenSearchBasicAuth.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAppSpecServiceLogDestinationOpenSearchBasicAuth(
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      user: (() {
        final guardedValue = map['user'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
