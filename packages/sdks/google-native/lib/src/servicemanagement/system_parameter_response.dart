// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Define a parameter's name and location. The parameter may be passed as either an HTTP header or a URL query parameter, and if both are passed the behavior is implementation-dependent.
class SystemParameterResponse {
  /// Define the HTTP header name to use for the parameter. It is case insensitive.
  final pulumi.Input<String> httpHeader;

  /// Define the name of the parameter, such as "api_key" . It is case sensitive.
  final pulumi.Input<String> name;

  /// Define the URL query parameter name to use for the parameter. It is case sensitive.
  final pulumi.Input<String> urlQueryParameter;

  /// Creates a new [SystemParameterResponse].
  /// [httpHeader] Define the HTTP header name to use for the parameter. It is case insensitive.
  /// [name] Define the name of the parameter, such as "api_key" . It is case sensitive.
  /// [urlQueryParameter] Define the URL query parameter name to use for the parameter. It is case sensitive.
  SystemParameterResponse({
    required this.httpHeader,
    required this.name,
    required this.urlQueryParameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpHeader': httpHeader,
      'name': name,
      'urlQueryParameter': urlQueryParameter,
    };
  }

  factory SystemParameterResponse.fromMap(Map<String, dynamic> map) {
    return SystemParameterResponse(
      httpHeader: pulumi.Input.fromValue(map['httpHeader'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      urlQueryParameter: pulumi.Input.fromValue(
        map['urlQueryParameter'] as String,
      ),
    );
  }
}
