// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DeviceDerivedAttribute defines a derived attribute computed via CEL.
class DeviceDerivedAttributeResourceK8sIoV1beta1 {
  /// Expression is a CEL expression evaluated against each candidate device. The expression must evaluate to a primitive scalar (string, integer, boolean, or semver) or a list of these scalars ([]string, []int64, []bool, []semver) to act as a virtual grouping key. Any other return type is an error and causes CEL evaluation for the device to fail.
  ///
  /// The expression's input is an object named "device", which carries the same properties as in a CELDeviceSelector.
  ///
  /// When pod scheduling encounters CEL runtime errors (such as looking up an attribute that isn't defined) for some devices, it will abort allocation and fail scheduling for the Pod. Surfacing evaluation errors immediately prevents silent topology matching failures that are extremely hard to detect. A robust expression should, for example, check for the existence of attributes before referencing them to avoid runtime evaluation errors.
  ///
  /// The expression gets evaluated after a device has passed the other selector expressions for the request in which this expression is used. This allows writing expressions that are tailored towards the specific devices being requested (for example, by assuming the device is from a certain vendor and skipping those checks).
  ///
  /// The length of the expression must be smaller or equal to 10 Ki. The cost of evaluating it is also limited based on the estimated number of logical steps; the combined cost of all derived attributes in a claim is capped by a shared CEL cost budget.
  final pulumi.Input<String> expression;
  /// Name is the identifier for this derived attribute, used in constraints.
  ///
  /// It must be a DNS subdomain followed by a slash ("/") followed by a C identifier (e.g. "example.com/numaNode" or "derived/numaNode").
  ///
  /// If the chosen name matches an existing physical attribute from a driver, the derived attribute's expression will shadow the physical attribute, and its evaluated value will be used in constraints instead. When the goal is to define a derived attribute that is only used within the ResourceClaim and not meant to shadow an existing attribute, use a domain prefix that no DRA driver should be using (e.g. "derived/myAttribute").
  ///
  /// It is not valid to define a derived attribute that isn't used in at least one constraint.
  final pulumi.Input<String> name;

  /// Creates a new [DeviceDerivedAttributeResourceK8sIoV1beta1].
  /// [expression] Expression is a CEL expression evaluated against each candidate device. The expression must evaluate to a primitive scalar (string, integer, boolean, or semver) or a list of these scalars ([]string, []int64, []bool, []semver) to act as a virtual grouping key. Any other return type is an error and causes CEL evaluation for the device to fail.
  /// [name] Name is the identifier for this derived attribute, used in constraints.
  const DeviceDerivedAttributeResourceK8sIoV1beta1({
    required this.expression,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
      'name': name,
    };
  }

  factory DeviceDerivedAttributeResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return DeviceDerivedAttributeResourceK8sIoV1beta1(
      expression: pulumi.Input.fromValue(map['expression'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
