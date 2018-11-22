import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class linProc {
    public static void main(String[] args) {
        Process p;
        try {

            if(args.length != 1 || args[0] == null || args[0].isEmpty())
            {
                System.out.println("Hm...I dont see any command given in the args");
                System.exit(1);
            }


            String[] cmd = {
                    "/bin/sh",
                    "-c",
                    "ps -u testUser | grep dragonfly | awk '{print $1}'"
            };
            p = Runtime.getRuntime().exec(cmd);
            p.waitFor();
            BufferedReader reader=new BufferedReader(new InputStreamReader(
                    p.getInputStream()));
            BufferedReader errReader=new BufferedReader(new InputStreamReader(
                    p.getErrorStream()));
            String line;
            System.out.println("Java output:");
            if(p.exitValue() != 0)
            {
                System.out.println(errReader.readLine());
                System.exit(1);
            }
            line = reader.readLine();
                try{
                    Integer.parseInt(line);
                }catch (Exception e)
                {
                    System.out.println("Cant find the correct process, please complete the task... ");
                    System.exit(1);
                }

                if(Integer.parseInt(line) == Integer.parseInt(args[0]))
                    System.out.println("Password to next room is: coolproc");
                else
                    System.out.println("wrong process ID supplied! ");

        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (InterruptedException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
