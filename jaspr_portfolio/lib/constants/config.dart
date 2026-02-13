const String baseHref = String.fromEnvironment('BASE_HREF', defaultValue: '/');

String get basePath {
  if (baseHref == '/') return '';
  if (baseHref.endsWith('/')) return baseHref.substring(0, baseHref.length - 1);
  return baseHref;
}
