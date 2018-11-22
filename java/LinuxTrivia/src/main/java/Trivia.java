import java.util.*;

public class Trivia {

    HashMap<Integer, List<String>> answers = new HashMap<Integer, List<String>>();
    List<String> questions;

    public static void main(String args[])
    {
        Trivia triv = new Trivia();
         triv.createTrivia();
        triv.runTrivia();
    }

    private void runTrivia() {

        Scanner user_input = new Scanner( System.in );
        boolean isFinished = true;
        boolean hasMoreQuestions = true;
        ListIterator<String> iter =questions.listIterator();
        while(iter.hasNext())
        {
            int index =iter.nextIndex();
            String question =iter.next();
            System.out.println("Question "+(index+1)+": "+question);
            System.out.println("Your abswer:");
            //write to screen
            //readAnswer
            String answer  = user_input.next( );

            while(!checkAnswer(answer, index))
            {
                System.out.println("wrong answer, try again...");
                System.out.println("Question: "+question);
                answer  = user_input.next( );
                //readline
            }

        }

        System.out.println("Congrats! you finished the trivia challenge! ");
        System.out.println("The key to the treasure chest is 'geniuslinuxuser'! ");
    }

    private boolean checkAnswer(String answer, int index) {
        List<String> answersList = answers.get(index);
         boolean gotAns = false;
        for(int i=0;i<answersList.size();i++) {
            if (answersList.get(i).equalsIgnoreCase(answer.trim())) {
                gotAns = true;
                break;
            }
        }
        if(gotAns)
            System.out.println("very Good!");
        return gotAns;

    }

    private void createTrivia() {
        questions = new ArrayList<String>();
        questions.add("lets start with something simple: a symbol to comment a row in script or a command? (1 char)");
        answers.put(0, Arrays.asList("#"));
        questions.add("parameter in 'cd' command which takes you to the previous working directory you have been? (1 char)");
        answers.put(1, Arrays.asList("-"));
        questions.add(" which  symbol tell the shell to append to file? (2 chars)");
        answers.put(2, Arrays.asList(">>"));
        questions.add("One of the shell commands you use to show actual command behind the alias (4 chars)");
        answers.put(3, Arrays.asList("type"));
        questions.add(" 'cd' to home directory symbol (1 char)");
        answers.put(4, Arrays.asList("~"));
        questions.add(" alias of 'ls -alF'? (2 chars)");
        answers.put(5, Arrays.asList("ll"));
        questions.add("command to keep listing the currently running processes, sorted by cpu usage (3 chars)");
        answers.put(6, Arrays.asList("top"));
        questions.add(" on command line,while executing multiple commands, symbol which make sure that the next command will only run when the previous command was successful (2 chars)");
        answers.put(7, Arrays.asList("&&"));
        questions.add(" commonly used command to print only first N lines of a file (4 chars)");
        answers.put(8, Arrays.asList("head"));
        questions.add(" on cmd, Reuse the previous command in present command shortcut(2 chars)");
        answers.put(9, Arrays.asList("!!"));
        questions.add(" convert '546' numeric permission convention to letters(r-xw...) (9 chars)");
        answers.put(10, Arrays.asList("r-xr--rw-"));
        questions.add("Displays the file system disk space usage (2 chars)");
        answers.put(11, Arrays.asList("df"));
        questions.add("name of file which is used to keep track of every registered user that has access to the system (6 chars)");
        answers.put(12, Arrays.asList("passwd"));
        questions.add("operating system command to read files, which doesn’t need to load the full file while opening and allow to scroll up and down on the content.(4 chars)");
        answers.put(13, Arrays.asList("less"));
        questions.add("command to edit the sudoers file (6 chars)");
        answers.put(14, Arrays.asList("visudo"));
        questions.add(" partition reserved for the installation of add-on application software packages (3 chars)");
        answers.put(15, Arrays.asList("opt"));




    }
}
