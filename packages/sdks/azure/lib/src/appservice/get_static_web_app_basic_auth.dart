// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStaticWebAppBasicAuth {
  /// The Environment types which are configured to use Basic Auth access.
  final pulumi.Input<String> environments;

  /// Creates a new [GetStaticWebAppBasicAuth].
  /// [environments] The Environment types which are configured to use Basic Auth access.
  const GetStaticWebAppBasicAuth({
    required this.environments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environments': environments,
    };
  }

  factory GetStaticWebAppBasicAuth.fromMap(Map<String, dynamic> map) {
    return GetStaticWebAppBasicAuth(
      environments: pulumi.Input.fromValue(map['environments'] as String),
    );
  }
}

