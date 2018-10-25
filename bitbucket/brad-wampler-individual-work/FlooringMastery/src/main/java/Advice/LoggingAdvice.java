/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Advice;

import DAO.AuditDao;
import org.aspectj.lang.JoinPoint;

/**
 *
 * @author bwamp
 */
public class LoggingAdvice {
    AuditDao auditDao;

    public LoggingAdvice(AuditDao auditDao) {
        this.auditDao = auditDao;
    }

    public void createAuditEntry(JoinPoint jp) {
        Object[] args = jp.getArgs();
        String auditEntry = jp.getSignature().getName() + ": ";
        for (Object currentArg : args) {
            auditEntry += currentArg;
        }
        try {
            auditDao.writeAuditEntry(auditEntry);
        } catch (Exception e) {
            System.err.println(
                    "ERROR: Could not create audit entry in LoggingAdvice.");
        }
        
    }
}
