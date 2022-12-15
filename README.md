# opencdms-schedule-implementation

### Run demo

Clone this repo and run `docker-compose up --build` form repository root. Then go to http://localhost:5000

### Workflow

1. No job is run at the moment and there is no log.
![1.png](screenshots%2F1.png)

2. Ran backup job twice
![2.png](screenshots%2F2.png)

3. Now there are logs for backup jobs
![3.png](screenshots%2F3.png)

4. Copied the curl command from backup job and pasted it in the command field
![4.png](screenshots%2F4.png)
Then executed the endpoint to schedule backup jobs

5. Now the scheduled backup job is running each second
![5.png](screenshots%2F5.png)