function evaluate(expression) {
    try {
        // Replace '^' with '**' for exponentiation
        expression = expression.replace(/\^/g, "**");

        // Provide math functions using Math object
        const mathContext = {
            sin: Math.sin,
            cos: Math.cos,
            tan: Math.tan,
            sqrt: Math.sqrt,
            pow: Math.pow,
            abs: Math.abs,
            log: Math.log,
            PI: Math.PI,
            E: Math.E
        };

        // Construct a function that uses this context
        const func = new Function(...Object.keys(mathContext), `"use strict"; return (${expression})`);
        const result = func(...Object.values(mathContext));

        if (isNaN(result) || result === Infinity || result === -Infinity) {
            return "Error";
        }

        return result.toString();
    } catch (e) {
        return "Error";
    }
}
