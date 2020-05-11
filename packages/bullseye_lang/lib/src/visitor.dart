import 'package:bullseye_lang/bullseye_lang.dart';

abstract class DirectiveNodeVisitor<T> {
  T visitImportDirective(ImportDirectiveNode node);
}

abstract class DeclNodeVisitor<T> {
  T visitTypeDecl(TypeDeclNode node);
  T visitLetDecl(LetDeclNode node);
}

abstract class ExprNodeVisitor<T> {
  T visitIdExpr(IdExprNode node);
  T visitIntLiteral(IntLiteralNode node);
  T visitDoubleLiteral(DoubleLiteralNode node);
  T visitVoidLiteral(VoidLiteralNode node);
  T visitStringLiteral(StringLiteralNode node);
  T visitAwaitExpr(AwaitExprNode node);
  T visitPropertyExpr(PropertyExprNode node);
  T visitThrowExpr(ThrowExprNode node);
  T visitCallExpr(CallExprNode node);
  T visitLetInExpr(LetInExprNode node);
  T visitBeginEndExpr(BeginEndExprNode node);
  T visitParenExpr(ParenExprNode node);
}

abstract class StringPartNodeVisitor<T> {
  T visitTextStringPart(TextStringPartNode node);
  T visitInterpolationStringPart(InterpolationStringPartNode node);
}

abstract class TypeNodeVisitor<T> {
  T visitTypeRef(TypeRefNode node);
}

abstract class PatternNodeVisitor<T> {
  T visitIdPattern(IdPatternNode node);
  T visitIgnoredPattern(IgnoredPatternNode node);
  T visitAliasedPattern(AliasedPatternNode node);
  T visitVoidPattern(VoidPatternNode node);
  T visitExprPattern(ExprPatternNode node);
  T visitParenPattern(ParenPatternNode node);
}