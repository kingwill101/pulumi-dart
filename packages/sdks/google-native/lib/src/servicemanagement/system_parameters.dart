// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_parameter_rule.dart';

/// ### System parameter configuration A system parameter is a special kind of parameter defined by the API system, not by an individual API. It is typically mapped to an HTTP header and/or a URL query parameter. This configuration specifies which methods change the names of the system parameters.
class SystemParameters {
  /// Define system parameters. The parameters defined here will override the default parameters implemented by the system. If this field is missing from the service config, default system parameters will be used. Default system parameters and names is implementation-dependent. Example: define api key for all methods system_parameters rules: - selector: "*" parameters: - name: api_key url_query_parameter: api_key Example: define 2 api key names for a specific method. system_parameters rules: - selector: "/ListShelves" parameters: - name: api_key http_header: Api-Key1 - name: api_key http_header: Api-Key2 **NOTE:** All service configuration rules follow "last one wins" order.
  final pulumi.Input<List<SystemParameterRule>>? rules;

  /// Creates a new [SystemParameters].
  /// [rules] Define system parameters. The parameters defined here will override the default parameters implemented by the system. If this field is missing from the service config, default system parameters will be used. Default system parameters and names is implementation-dependent. Example: define api key for all methods system_parameters rules: - selector: "*" parameters: - name: api_key url_query_parameter: api_key Example: define 2 api key names for a specific method. system_parameters rules: - selector: "/ListShelves" parameters: - name: api_key http_header: Api-Key1 - name: api_key http_header: Api-Key2 **NOTE:** All service configuration rules follow "last one wins" order.
  SystemParameters({
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': ?pulumi.Input.mapOptionalInputValue<List<SystemParameterRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<SystemParameterRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SystemParameters.fromMap(Map<String, dynamic> map) {
    return SystemParameters(
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<SystemParameterRule>(map['rules']!, (value) => SystemParameterRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

