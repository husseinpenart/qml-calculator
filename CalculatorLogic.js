function evaluate(expression) {
    try {
        // Basic expression evaluator (no variables, just math)
        return Function('"use strict"; return (' + expression + ')')();
    } catch (e) {
        return "Error";
    }
}
