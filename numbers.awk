BEGIN {min=-1; max=0; sum=0;}
NR>1 {
	score=int($9)
        if (min < 0 || min > score) {
        	min = score
        }
	if (score != 0 && max < score) {
                max = score
        }
	sum+=score
}
END { avg=sum/NR; printf("min %d max %d avg %.10f\n", min, max, avg); }

