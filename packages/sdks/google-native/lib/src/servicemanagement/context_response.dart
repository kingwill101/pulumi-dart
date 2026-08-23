// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'context_rule_response.dart';

/// `Context` defines which contexts an API requests. Example: context: rules: - selector: "*" requested: - google.rpc.context.ProjectContext - google.rpc.context.OriginContext The above specifies that all methods in the API request `google.rpc.context.ProjectContext` and `google.rpc.context.OriginContext`. Available context types are defined in package `google.rpc.context`. This also provides mechanism to allowlist any protobuf message extension that can be sent in grpc metadata using “x-goog-ext--bin” and “x-goog-ext--jspb” format. For example, list any service specific protobuf types that can appear in grpc metadata as follows in your yaml file: Example: context: rules: - selector: "google.example.library.v1.LibraryService.CreateBook" allowed_request_extensions: - google.foo.v1.NewExtension allowed_response_extensions: - google.foo.v1.NewExtension You can also specify extension ID instead of fully qualified extension name here.
class ContextResponse {
  /// A list of RPC context rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  final pulumi.Input<List<ContextRuleResponse>> rules;

  /// Creates a new [ContextResponse].
  /// [rules] A list of RPC context rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  const ContextResponse({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.mapInputValue<List<ContextRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ContextRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ContextResponse.fromMap(Map<String, dynamic> map) {
    return ContextResponse(
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<ContextRuleResponse>(map['rules']!, (value) => ContextRuleResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
