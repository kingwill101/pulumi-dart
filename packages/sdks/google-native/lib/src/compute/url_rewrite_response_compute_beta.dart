// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The spec for modifying the path before sending the request to the matched backend service.
class UrlRewriteResponseComputeBeta {
  /// Before forwarding the request to the selected service, the request's host header is replaced with contents of hostRewrite. The value must be from 1 to 255 characters.
  final pulumi.Input<String> hostRewrite;
  /// Before forwarding the request to the selected backend service, the matching portion of the request's path is replaced by pathPrefixRewrite. The value must be from 1 to 1024 characters.
  final pulumi.Input<String> pathPrefixRewrite;
  /// If specified, the pattern rewrites the URL path (based on the :path header) using the HTTP template syntax. A corresponding path_template_match must be specified. Any template variables must exist in the path_template_match field. - -At least one variable must be specified in the path_template_match field - You can omit variables from the rewritten URL - The * and ** operators cannot be matched unless they have a corresponding variable name - e.g. {format=*} or {var=**}. For example, a path_template_match of /static/{format=**} could be rewritten as /static/content/{format} to prefix /content to the URL. Variables can also be re-ordered in a rewrite, so that /{country}/{format}/{suffix=**} can be rewritten as /content/{format}/{country}/{suffix}. At least one non-empty routeRules[].matchRules[].path_template_match is required. Only one of path_prefix_rewrite or path_template_rewrite may be specified.
  final pulumi.Input<String> pathTemplateRewrite;

  /// Creates a new [UrlRewriteResponseComputeBeta].
  /// [hostRewrite] Before forwarding the request to the selected service, the request's host header is replaced with contents of hostRewrite. The value must be from 1 to 255 characters.
  /// [pathPrefixRewrite] Before forwarding the request to the selected backend service, the matching portion of the request's path is replaced by pathPrefixRewrite. The value must be from 1 to 1024 characters.
  /// [pathTemplateRewrite] If specified, the pattern rewrites the URL path (based on the :path header) using the HTTP template syntax. A corresponding path_template_match must be specified. Any template variables must exist in the path_template_match field. - -At least one variable must be specified in the path_template_match field - You can omit variables from the rewritten URL - The * and ** operators cannot be matched unless they have a corresponding variable name - e.g. {format=*} or {var=**}. For example, a path_template_match of /static/{format=**} could be rewritten as /static/content/{format} to prefix /content to the URL. Variables can also be re-ordered in a rewrite, so that /{country}/{format}/{suffix=**} can be rewritten as /content/{format}/{country}/{suffix}. At least one non-empty routeRules[].matchRules[].path_template_match is required. Only one of path_prefix_rewrite or path_template_rewrite may be specified.
  UrlRewriteResponseComputeBeta({
    required this.hostRewrite,
    required this.pathPrefixRewrite,
    required this.pathTemplateRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostRewrite': hostRewrite,
      'pathPrefixRewrite': pathPrefixRewrite,
      'pathTemplateRewrite': pathTemplateRewrite,
    };
  }

  factory UrlRewriteResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return UrlRewriteResponseComputeBeta(
      hostRewrite: (map['hostRewrite'] as String).input(),
      pathPrefixRewrite: (map['pathPrefixRewrite'] as String).input(),
      pathTemplateRewrite: (map['pathTemplateRewrite'] as String).input(),
    );
  }
}

