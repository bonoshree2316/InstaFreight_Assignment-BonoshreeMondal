/*======================================================================================================================================
*   Class Name : MatcherClass
*   Author     : BMONDAL
*   Date       : 19-APR-2022
*   Description: Check if the Depth of Parentheses is correct to determine if the value is nested     
* =====================================================================================================================================  
*/
public class MatcherClass {

    // function to check if brackets are balanced
    public static boolean isTextNested(String expr)
    {
        // Using ArrayDeque is faster than using Stack class
        Stack stack = new Stack();
 
        // Traversing the Expression
        for (Integer i = 0; i < expr.length(); i++)
        {
            String x = expr.substring(i, i+1);
 
            if (x == '(' || x == '[' || x == '{')
            {
                // Push the element in the stack
                stack.push(x);
                continue;
            }
            else if((x != ')' && x != ']' && x != '}')){
                continue;
            }
 
            // If current character is not opening
            // bracket, then it must be closing. So stack
            // cannot be empty at this point.
            if (stack.isEmpty())
                return false;
            String check;
            switch on x {
                when ')'{
                    check = (String)stack.pop();
                    if (check == '{' || check == '[')
                        return false;
                }
                when '}'{
                    check = (String)stack.pop();
                    if (check == '(' || check == '[')
                        return false;
                }
                when ']'{
                    check = (String)stack.pop();
                    if (check == '(' || check == '{')
                        return false;
                }
            }
        }
 
        // Check Empty Stack
        return (stack.isEmpty());
    }
 }