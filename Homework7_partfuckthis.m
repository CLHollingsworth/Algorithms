function ANS = threedotseven(x)
%THREEDOTSEVEN arithmitic with chopping
    highest = 10;
    for i = 1:highest
        mag = 10^i;
        step1 = floor(6*x*mag)/mag;
        step2 = floor(x^2*mag)/mag;
        step3 = floor(step2*3*mag)/mag;
        step4 = floor((1 - step3)*mag)/mag;
        step5 = floor(step4^2*mag)/mag;
        step6 = floor(step1/step5*mag)/mag;
        val(i) = step6;
    end
    doublePrecisionAns = (6*x)/(1-3*x^2)^2
    ANS = val';
   
    hold on
    plot((1:.01:highest),doublePrecisionAns,'red');
    plot((1:highest),val);
end